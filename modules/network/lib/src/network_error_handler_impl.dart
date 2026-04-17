import 'package:core/domain/entities/extended_error.dart';
import 'package:core/domain/entities/failures/app_failures.dart';
import 'package:core/domain/entities/failures/network_failures.dart';
import 'package:core/external_dependencies.dart';
import 'package:core/logger/logger.dart';
import 'package:network/src/mappers/server_failure_parser.dart';
import 'package:network/src/network_error_handler.dart';
import 'package:network/src/server_error.dart';

class NetworkErrorHandlerImpl implements NetworkErrorHandler {
  const NetworkErrorHandlerImpl({
    required ServerFailureParser serverFailureParser,
    Logger? exceptionLogger,
  }) : _serverFailureParser = serverFailureParser,
       _logger = exceptionLogger;

  final ServerFailureParser _serverFailureParser;
  final Logger? _logger;

  @override
  Future<T> tryCall<T>(Future<T> Function() call) {
    return _tryCall(call);
  }

  Future<T> _tryCall<T>(Future<T> Function() call) async {
    try {
      return await call();
    } on ExtendedError catch (e) {
      return switch (e) {
        NoConnectionError() => throw const NoConnectionFailure(),
        ParseError() => throw const ParseFailure(),
      };
    } on DioException catch (exception, s) {
      _logger?.logError(exception, s, hint: 'NetworkErrorHandlerImpl.tryCall');
      if ([
        DioExceptionType.connectionTimeout,
        DioExceptionType.receiveTimeout,
        DioExceptionType.sendTimeout,
      ].contains(exception.type)) {
        throw PredefinedServerFailure(
          statusCode: exception.response?.statusCode ?? -1,
          type: ServerFailureType.timeout,
        );
      }
      if (exception.type == DioExceptionType.cancel) {
        throw RequestCancelledFailure(exception);
      }
      throw _getAppropriateFailure(exception.response);
    } on Object catch (e, s) {
      Logger.instance.logError(e, s, hint: 'Unhandled error in NetworkErrorHandlerImpl.tryCall', fatal: true);
      throw UnhandledFailure(e, s);
    }
  }

  AppFailure _getAppropriateFailure(Response? response) {
    final statusCode = response?.statusCode ?? -1;

    // Проверить краевые случаи ответа сервера
    switch (statusCode) {
      case -1:
        return const NoConnectionFailure();
      case 500:
      case 502:
      case 503:
      case 504:
        return PredefinedServerFailure(
          statusCode: statusCode,
          type: ServerFailureType.serverNotAvailable,
        );
    }

    // Обработать данные ошибки
    final model = _tryParseServerFailure(response);
    return _serverFailureParser.fromServerError(statusCode, model);
  }

  ServerError _tryParseServerFailure(Response? response) {
    try {
      return ServerError.fromJson(response?.data);
    } catch (e) {
      throw NetworkInfrastructureFailure(
        statusCode: response?.statusCode ?? -1,
      );
    }
  }
}
