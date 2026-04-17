
import 'package:core/domain/entities/failures/app_failures.dart';
import 'package:core/domain/usecases/core/base_use_cases.dart';

abstract class AsyncUseCase<T, P> extends AsyncBaseUseCase<T, AppFailure, P> {
  const AsyncUseCase({
    UseCaseErrorConverter? errorConverter,
    UseCaseErrorLogger? errorLogger,
  }) : super(
         errorConverter:
             errorConverter ?? const _DefaultUseCaseErrorConverter(),
         errorLogger: errorLogger ?? const _DefaultUseCaseErrorLogger(),
       );
}

abstract class SyncUseCase<T, P> extends SyncBaseUseCase<T, AppFailure, P> {
  const SyncUseCase()
    : super(
        errorConverter: const _DefaultUseCaseErrorConverter(),
        errorLogger: const _DefaultUseCaseErrorLogger(),
      );
}

abstract class StreamUseCase<T, P> extends StreamBaseUseCase<T, AppFailure, P> {
  const StreamUseCase()
    : super(
        errorConverter: const _DefaultUseCaseErrorConverter(),
        errorLogger: const _DefaultUseCaseErrorLogger(),
      );
}

final class _DefaultUseCaseErrorConverter
    implements UseCaseErrorConverter<AppFailure> {
  const _DefaultUseCaseErrorConverter();

  @override
  AppFailure convert(Object error, StackTrace stackTrace) {
    if (error is AppFailure) {
      return error;
    }

    // ignore: only_throw_errors
    throw error;
  }
}

final class _DefaultUseCaseErrorLogger implements UseCaseErrorLogger {
  const _DefaultUseCaseErrorLogger();

  @override
  void log(Object error, StackTrace stackTrace) {
    // TODO(artyom): implement log
  }
}
