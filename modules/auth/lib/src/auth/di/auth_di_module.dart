import 'package:auth/auth.dart';
import 'package:core/core.dart';

mixin AuthModuleDependencies implements CoreModule {
  AuthBloc get authBloc;
}

class AuthDiModule extends FeatureModule<AuthModuleDependencies> {
  late final AuthBloc authBloc;

  @override
  void init(AuthModuleDependencies coreModule) {
    super.init(coreModule);
    authBloc = coreModule.authBloc;
  }
}