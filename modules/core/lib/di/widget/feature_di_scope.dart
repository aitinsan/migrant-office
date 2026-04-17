import 'package:core/di/core_di_module.dart';
import 'package:core/di/feature_di_module.dart';
import 'package:core/di/widget/core_di_scope.dart';
import 'package:flutter/widgets.dart';

class FeatureDiScope<F extends FeatureModule<C>, C extends CoreModule>
    extends StatefulWidget {
  const FeatureDiScope({
    required this.moduleBuilder,
    this.child,
    this.builder,
    super.key,
  }) : assert(
         (child == null && builder != null) ||
             (child != null && builder == null),
       );

  final F Function() moduleBuilder;

  final Widget? child;

  final Widget Function(BuildContext context, F module)? builder;

  @visibleForTesting
  static F of<F extends FeatureModule<C>, C extends CoreModule>(
    BuildContext context,
  ) => _FeatureInherited.of(context);

  @override
  State<FeatureDiScope<F, C>> createState() => _FeatureDiScopeState<F, C>();
}

class _FeatureDiScopeState<F extends FeatureModule<C>, C extends CoreModule>
    extends State<FeatureDiScope<F, C>> {
  late final F module;

  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_initialized) return;

    final core = CoreDiScope.of<C>(context);
    module = widget.moduleBuilder();
    module.init(core);
    _initialized = true;
  }

  @override
  void dispose() {
    module.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _FeatureInherited<F>(
      module: module,
      child: widget.child ?? widget.builder!(context, module),
    );
  }
}

class _FeatureInherited<F> extends InheritedWidget {
  const _FeatureInherited({required this.module, required super.child});

  final F module;

  static F? maybeOf<F>(BuildContext context) =>
      context.getInheritedWidgetOfExactType<_FeatureInherited<F>>()?.module;

  static Never _notFoundInheritedWidgetOfExactType<C extends CoreModule>() =>
      throw ArgumentError(
        'Out of scope, not found inherited widget '
            'a CoreDiScope<$C> of the exact type',
        'out_of_scope',
      );

  static F of<F>(BuildContext context, {bool listen = true}) =>
      maybeOf(context) ?? _notFoundInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(_FeatureInherited oldWidget) =>
      module != oldWidget.module;
}
