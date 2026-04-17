import 'package:core/logger/logger.dart';
import 'package:flutter/foundation.dart';

class DebugPrintLogger implements Logger {
  const DebugPrintLogger();

  @override
  void logError(
    Object exception,
    StackTrace stackTrace, {
    String? hint,
    bool fatal = false,
  }) {
    final StringBuffer buffer = StringBuffer();
    final exceptionString = Error.safeToString(exception);
    final emoji = fatal ? '💥' : '⚠️';

    buffer.writeln(_messageFormatting(DateTime.now(), exceptionString, emoji));
    if (hint != null) buffer.writeln('Hint: $hint');
    buffer.writeln('StackTrace: $stackTrace');
    debugPrint(buffer.toString());
  }

  @override
  void logMessage(
    String message, {
    StackTrace? stackTrace,
    String? hint,
    bool warning = false,
  }) {
    final StringBuffer buffer = StringBuffer();
    final emoji = warning ? '⚠️' : 'ℹ️';

    buffer.writeln(_messageFormatting(DateTime.now(), message, emoji));
    if (hint != null) buffer.writeln('Hint: $hint');
    if (stackTrace != null) buffer.writeln('StackTrace: $stackTrace');
    debugPrint(buffer.toString());
  }
}

/// Formats the log message.
Object _messageFormatting(DateTime time, String message, String emoji) =>
    '$emoji ${_timeFormat(time)} | $message';

/// Formats the time.
String _timeFormat(DateTime time) =>
    '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
