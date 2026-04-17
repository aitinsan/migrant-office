import 'dart:ui';

import 'package:core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:migrant_office/bootstrap/initialize_dependencies.dart';
import 'package:migrant_office/core/di/root_di_module.dart';

Future<void> initializeApp({
  required Future<void> Function() reinitialize,
  void Function(int progress, String message)? onProgress,
  Future<void> Function(RootDiModule dependencies)? onSuccess,
  void Function(Object error, StackTrace stackTrace)? onError,
}) => _$initializeApp ??= Future<RootDiModule>(() async {
  late final WidgetsBinding binding;
  final stopwatch = Stopwatch()..start();
  try {
    binding = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();
    /* await SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]); */

    // TODO(serikkaliyev): html loader

    await _catchExceptions();
    final dependencies = await initializeDependencies(
      reinitialize: reinitialize,
      onProgress: onProgress,
    ).timeout(const Duration(minutes: 7));
    await onSuccess?.call(dependencies);
    return dependencies;
  } on Object catch (error, stackTrace) {
    onError?.call(error, stackTrace);
    Logger.instance.logError(
      error,
      stackTrace,
      hint: 'Error during app initialization',
      fatal: true,
    );
    rethrow;
  } finally {
    stopwatch.stop();
    binding.addPostFrameCallback((_) {
      // Closes splash screen, and show the app layout.
      binding.allowFirstFrame();
      //final context = binding.renderViewElement;
    });
    _$initializeApp = null;
  }
});

/// Ephemerally initializes the app and prepares it for use.
Future<RootDiModule>? _$initializeApp;

/// Resets the app's state to its initial state.
@visibleForTesting
Future<void> $resetApp(RootDiModule dependencies) async {}

/// Disposes the app and releases all resources.
@visibleForTesting
Future<void> $disposeApp(RootDiModule dependencies) async {}

Future<void> _catchExceptions() async {
  try {
    PlatformDispatcher.instance.onError = (error, stackTrace) {
      Logger.instance.logError(
        error,
        stackTrace,
        hint: 'ROOT ERROR\r\n${Error.safeToString(error)}',
        fatal: true,
      );
      return true;
    };

    final sourceFlutterError = FlutterError.onError;
    FlutterError.onError = (final details) {
      // FlutterError.presentError(details);
      Logger.instance.logError(
        details.exception,
        details.stack ?? StackTrace.current,
        hint: 'FLUTTER ERROR\r\n${Error.safeToString(details.exception)}',
        fatal: true,
      );
      sourceFlutterError?.call(details);
    };
  } on Object catch (e, s) {
    Logger.instance.logError(
      e,
      s,
      hint: 'Error in _catchExceptions',
      fatal: true,
    );
  }
}
