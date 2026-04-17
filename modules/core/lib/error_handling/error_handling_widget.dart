import 'package:core/error_handling/error_handler.dart';
import 'package:core/error_handling/error_handling_callbacks.dart';
import 'package:flutter/widgets.dart';

class ErrorHandlingWidget extends StatefulWidget {
  const ErrorHandlingWidget({
    required this.errorHandler,
    required this.onFailure,
    required this.child,
    super.key,
  });

  final ErrorHandler errorHandler;
  final ErrorHandlingCallback onFailure;
  final Widget child;

  @override
  State<ErrorHandlingWidget> createState() => _ErrorHandlingWidgetState();
}

class _ErrorHandlingWidgetState extends State<ErrorHandlingWidget> {
  @override
  void initState() {
    widget.errorHandler.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    widget.errorHandler.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _listener() {
    final failure = widget.errorHandler.failure;
    if (failure != null) {
      widget.onFailure(
        failure: failure,
        onRetry: widget.errorHandler.onRetry,
        onPopError: widget.errorHandler.onPopError,
      );
    }
  }
}
