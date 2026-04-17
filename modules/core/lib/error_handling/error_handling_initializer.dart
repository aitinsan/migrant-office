import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';

class ErrorHandlingInitializer {
  ErrorHandlingInitializer._();

  static void init(ErrorHandler errorHandler, Logger logger) {
    _listenDartErrors(errorHandler, logger);
  }

  static void _listenDartErrors(ErrorHandler errorHandler, Logger logger) {
    PlatformDispatcher.instance.onError = (error, stackTrace) {
      /// если ошибка зарегистрирована блоком, то пропускаем обработку
      if (errorHandler.failure == error) {
        return true;
      } else if (errorHandler.failure case UnhandledFailure(
        error: final e,
      ) when e == error) {
        return true;
      }

      logger.logError(error, stackTrace, hint: 'Unhandled error in Dart code');
      unawaited(errorHandler.handle(error, stackTrace: stackTrace));

      return true;
    };
  }
}
