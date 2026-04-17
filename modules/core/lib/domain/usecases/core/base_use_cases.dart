import 'dart:async';

import 'package:core/domain/entities/failures/global_failures.dart';
import 'package:core/domain/entities/result.dart';
import 'package:core/logger/logger.dart';
import 'package:flutter/foundation.dart';
import '../../entities/failures/app_failures.dart';

abstract interface class UseCaseErrorConverter<T extends AppFailure> {
  T convert(Object error, StackTrace stackTrace);
}

abstract interface class UseCaseErrorLogger {
  void log(Object error, StackTrace stackTrace);
}

abstract class BaseUseCase<T, F extends AppFailure, P> {
  const BaseUseCase({
    required UseCaseErrorConverter<F> errorConverter,
    UseCaseErrorLogger? errorLogger,
  }) : _errorConverter = errorConverter,
       _errorLogger = errorLogger;

  final UseCaseErrorConverter<F> _errorConverter;
  final UseCaseErrorLogger? _errorLogger;

  @protected
  T makeRequest(P params);

  F _convertError(Object error, StackTrace stackTrace) {
    final logger = Logger.instance;
    logger.logError(error, stackTrace, hint: 'Error in use case: ${runtimeType.toString()}');

    _errorLogger?.log(error, stackTrace);

    return _errorConverter.convert(error, stackTrace);
  }
}

abstract class AsyncBaseUseCase<T, F extends AppFailure, P>
    extends BaseUseCase<FutureOr<T>, F, P> {
  const AsyncBaseUseCase({required super.errorConverter, super.errorLogger});

  Future<Result<F, T>> invoke(P params) async {
    try {
      final result = await makeRequest(params);

      return switch (result) {
        Result<F, T>() => result,
        _ => Result.success(result),
      };
    } catch (e, stackTrace) {
      final error = _convertError(e, stackTrace);
      // TODO(valery): переработать обработку ошибок в блоке и вынести эту проверку туда
      if (error is GlobalFailure) throw error;

      return Result.failure(error);
    }
  }
}

abstract class SyncBaseUseCase<T, F extends AppFailure, P>
    extends BaseUseCase<T, F, P> {
  const SyncBaseUseCase({required super.errorConverter, super.errorLogger});

  Result<F, T> invoke(P params) {
    try {
      final result = makeRequest(params);

      return switch (result) {
        Result<F, T>() => result,
        _ => Result.success(result),
      };
    } catch (e, stackTrace) {
      final error = _convertError(e, stackTrace);

      return Result.failure(error);
    }
  }
}

abstract class StreamBaseUseCase<T, F extends AppFailure, P>
    extends BaseUseCase<Stream<T>, F, P> {
  const StreamBaseUseCase({required super.errorConverter, super.errorLogger});

  Stream<Result<F, T>> invoke(P params) {
    final source = makeRequest(params);

    return source.transform(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          sink.add(Result.success(data));
        },
        handleError: (error, trace, sink) {
          try {
            sink.add(Result.failure(_convertError(error, trace)));
          } catch (e, st) {
            sink.addError(e, st);
          }
        },
      ),
    );
  }
}
