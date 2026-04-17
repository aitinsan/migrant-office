import 'package:core/di/core_di_module.dart';
import 'package:flutter/foundation.dart';

abstract class FeatureModule<C extends CoreModule> {
  late final C core;

  @mustCallSuper
  void init(C coreModule) {
    for (var m in featureModules) {
      m.init(coreModule);
    }
    core = coreModule;
  }

  @mustCallSuper
  void dispose() {
    for (var m in featureModules) {
      m.dispose();
    }
  }

  List<FeatureModule<C>> get featureModules => [];
}
