import 'package:core/di/widget/core_di_scope.dart';
import 'package:design_system/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:migrant_office/core/di/root_di_module.dart';

class App extends StatelessWidget {
  /// {@macro app}
  const App({super.key, required this.rootDiModule});

  final RootDiModule rootDiModule;

  @override
  Widget build(BuildContext context) => CoreDiScope(
    core: rootDiModule,
    child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: rootDiModule.router,
    ),
  );
}
