import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

class CoreDiScope<C extends CoreModule> extends StatelessWidget {
  const CoreDiScope({required this.core, required this.child, super.key});

  final C core;
  final Widget child;

  @override
  Widget build(BuildContext context) => _CoreInherited(
    core: core,
    child: child,
  );

  static C of<C extends CoreModule>(BuildContext context) {
    final core = context
        .dependOnInheritedWidgetOfExactType<_CoreInherited>()
        ?.core;
    if (core is C) return core;
    throw ArgumentError('Out of scope: CoreDiScope<$C>');
  }
}

// non-generic InheritedWidget — один тип для всех
class _CoreInherited extends InheritedWidget {
  const _CoreInherited({required this.core, required super.child});

  final CoreModule core;

  @override
  bool updateShouldNotify(_CoreInherited oldWidget) => core != oldWidget.core;
}