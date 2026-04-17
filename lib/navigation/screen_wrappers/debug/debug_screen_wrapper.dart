import 'package:core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:migrant_office/debug/di/debug_di_module.dart';
import 'package:migrant_office/debug/presentation/debug_screen.dart';

class DebugScreenWrapper extends StatelessWidget {
  const DebugScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return FeatureDiScope<DebugDiModule, DebugModuleDependencies>(
      moduleBuilder: () => DebugDiModule(),
      builder: (context, module) => BlocDisposer(
        create: (context) => module.bloc,
        builder: (context, bloc) => DebugScreen(bloc: bloc),
      ),
    );
  }
}
