import 'package:core/core.dart';
import 'package:flutter/foundation.dart';

class ErrorHandler with ChangeNotifier {
  ErrorHandler();

  AppFailure? _failure;
  void Function(AppFailure)? _onRetry;
  void Function(AppFailure)? _onPopError;

  AppFailure? get failure => _failure;

  void Function(AppFailure)? get onRetry => _onRetry;

  void Function(AppFailure)? get onPopError => _onPopError;

  Future<void> handle(
    Object error, {
    StackTrace? stackTrace,
    void Function(AppFailure)? onRetry,
    void Function(AppFailure)? onPopError,
  }) async {
    _failure = error is AppFailure
        ? error
        : UnhandledFailure(error, stackTrace ?? StackTrace.current);

    _onRetry = onRetry;
    _onPopError = onPopError;
    notifyListeners();
  }
}
