
import 'package:dio/dio.dart';
import 'app_failures.dart';

/// Сетевая ошибка
abstract class NetworkFailure extends AppFailure {
  const NetworkFailure({
    required this.statusCode,
    super.message = 'Network failure',
  });

  final int statusCode;

  @override
  List<Object?> get props => [message, statusCode];

  @override
  String toString() => 'code: $statusCode message: $message';
}

/// Сетевая ошибка инфраструктуры
class NetworkInfrastructureFailure extends NetworkFailure {
  const NetworkInfrastructureFailure({
    required super.statusCode,
    super.message = 'Network infrastructure failure',
  });
}

/// Предопределенная ошибка сервера
class PredefinedServerFailure extends NetworkFailure {
  const PredefinedServerFailure({
    required this.type,
    required super.statusCode,
    super.message = 'Server failure',
  });

  final ServerFailureType type;

  @override
  List<Object?> get props => [...super.props, type];
}

class RequestCancelledFailure extends NetworkFailure {
  const RequestCancelledFailure(this.originalError)
    : super(statusCode: -1, message: 'Request cancelled');

  final DioException originalError;
}

enum ServerFailureType { serverNotAvailable, timeout }

/// Ошибка сервера с дополнительными данными
class ServerFailure<ErrorJsonT> extends NetworkFailure {
  const ServerFailure({
    required this.model,
    required super.statusCode,
    super.message = 'Server failure',
  });

  final ErrorJsonT model;

  @override
  List<Object?> get props => [...super.props, model];

  @override
  String toString() => '${super.toString()} \nmodel:\n$model';
}
