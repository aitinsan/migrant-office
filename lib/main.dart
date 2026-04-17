import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:design_system/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:migrant_office/app/app.dart';
import 'package:migrant_office/app/app_error.dart' deferred as app_error;
import 'package:migrant_office/bootstrap/bootstrap.dart' deferred as bootstrap;

void main() => appZone(() async {
  // Splash screen
  final initializationProgress =
      ValueNotifier<({int progress, String message})>((
        progress: 0,
        message: '',
      ));

  /* runApp(SplashScreen(progress: initializationProgress)); */
  await bootstrap.loadLibrary();
  Future<void> initialize() {
    return bootstrap.initializeApp(
      reinitialize: initialize,
      onProgress: (progress, message) =>
          initializationProgress.value = (progress: progress, message: message),
      onSuccess: (dependencies) async =>
          runApp(DesignTokens(child: App(rootDiModule: dependencies))),
      onError: (error, stackTrace) async {
        await app_error.loadLibrary();
        runApp(app_error.AppError(error: error, reinitialize: initialize));
        log('$error');
      },
    );
  }

  initialize().ignore();
});

/// Catch all application errors and logs.
void appZone(Future<void> Function() fn) {
  return runZonedGuarded(
    fn,
    (error, stackTrace) => Logger.instance.logError(
      error,
      stackTrace,
      hint: 'Uncaught error in app zone',
      fatal: true,
    ),
  );
}
