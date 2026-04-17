import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract interface class AppRootRouter {
  Future<void> showDebugScreen(BuildContext context);

  Future<void> showFailure(
    BuildContext context, {
    required AppFailure failure,
    void Function(AppFailure)? onRetry,
    void Function(AppFailure)? onPopError,
  });
}
