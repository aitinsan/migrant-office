import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:migrant_office/navigation/router_impls/auth_router_impl.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return FeatureDiScope<AuthDiModule, AuthModuleDependencies>(
      moduleBuilder: () => AuthDiModule(),
      builder: (context, module) =>
          AuthScreen(router: AuthRouterImpl(), authBloc: module.authBloc),
    );
  }
}
