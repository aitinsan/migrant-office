import 'package:flutter/material.dart';

/// {@template app_error}
/// AppError widget.
/// {@endtemplate}
class AppError extends StatefulWidget {
  /// {@macro app_error}
  const AppError({super.key, this.error, this.reinitialize});

  final Object? error;

  final Future<void> Function()? reinitialize;

  @override
  State<AppError> createState() => _AppErrorState();
}

class _AppErrorState extends State<AppError> {
  final ValueNotifier<bool> _initializing = ValueNotifier(false);

  Future<void> _initialize() async {
    _initializing.value = true;
    try {
      await widget.reinitialize?.call();
    } on Object {
      rethrow;
    } finally {
      _initializing.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Error',
      theme:
          View.of(context).platformDispatcher.platformBrightness ==
              Brightness.dark
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.error.toString(),
                    textScaler: TextScaler.noScaling,
                  ),
                  ValueListenableBuilder(
                    valueListenable: _initializing,
                    builder: (context, initializing, child) => ElevatedButton(
                      onPressed: initializing || widget.reinitialize == null
                          ? null
                          : _initialize,
                      child: Text('Reinitialize'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: child!,
      ),
    );
  }
}
