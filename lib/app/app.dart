import 'package:core/core.dart';
import 'package:design_system/app_theme.dart';
import 'package:design_system/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:migrant_office/core/di/root_di_module.dart';
import 'package:migrant_office/debug/presentation/widget/debug_floating_buttons.dart';

class App extends StatelessWidget {
  const App({super.key, required this.rootDiModule});

  final RootDiModule rootDiModule;

  @override
  Widget build(BuildContext context) => CoreDiScope(
    core: rootDiModule,
    child: MaterialApp.router(
      theme: AppTheme.getTheme(
        colors: context.colors,
        typography: context.typography,
      ),
      routerConfig: rootDiModule.router,
      builder: (context, child) {
        final textScaler = TextScaler.noScaling;

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: textScaler),
          child: Stack(
            children: [
              DebugFloatingButtonWrapper(
                diModule: rootDiModule,
                enabled: !AppFlavor.isProd,
                child: child ?? SizedBox.shrink(),
              ),
              Overlay(
                initialEntries: [
                  OverlayEntry(
                    builder: (_) => ErrorHandlingWidget(
                      errorHandler: rootDiModule.errorHandler,
                      onFailure: ({required failure, onPopError, onRetry}) {},
                      child: SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}
