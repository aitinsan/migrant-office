import 'package:core/logger/debug_print_logger.dart';

export 'debug_print_logger.dart';

abstract interface class Logger {
  void logError(Object exception, StackTrace stackTrace, {String? hint, bool fatal = false});

  void logMessage(String message, {StackTrace? stackTrace, String? hint, bool warning = false});

  /// The default logger instance. 
  /// You can replace it with your own implementation using [setLogger].
  static Logger instance = DebugPrintLogger();

  /// Sets the logger instance to be used throughout the application.
  /// This allows you to replace the default logger with a custom implementation.
  static void setLogger(Logger logger) => instance = logger;
}
