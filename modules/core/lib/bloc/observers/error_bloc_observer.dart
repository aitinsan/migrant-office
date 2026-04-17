import 'dart:async';

import 'package:core/core.dart';

class ErrorBlocObserver extends BlocObserver {
  const ErrorBlocObserver({required this.errorHandler});

  final ErrorHandler errorHandler;

  /// Все неизвестные ошибки из блока обрабатываются далее как UnhandledFailure
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    final handledError = error is AppFailure
        ? error
        : UnhandledFailure(error, stackTrace);
    if (bloc is ErrorHandleBloc) {
      unawaited(
        errorHandler.handle(
          handledError,
          onRetry: bloc.onRetry,
          onPopError: bloc.onPopError,
        ),
      );
    } else {
      unawaited(errorHandler.handle(handledError));
    }
    super.onError(bloc, error, stackTrace);
  }
}
