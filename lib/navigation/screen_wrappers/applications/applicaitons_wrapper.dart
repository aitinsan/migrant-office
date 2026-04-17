import 'package:applications/applications.dart';
import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:migrant_office/core/di/root_di_module.dart';

class ApplicationsWrapper extends StatelessWidget {
  const ApplicationsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return FeatureDiScope<ApplicationsDiModule, ApplicationsModuleDependencies>(
      moduleBuilder: () => ApplicationsDiModule(),
      builder: (context, module) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: module.applicationsBloc),
          BlocProvider.value(value: module.createApplicationBloc),
        ],
        child: ApplicationsScreen(
          applicationsBloc: module.applicationsBloc,
          createApplicationBloc: module.createApplicationBloc,
          onSignOut: () {
            // TODO: remove when profile feature ready
            CoreDiScope.of<RootDiModule>(
              context,
            ).authBloc.add(AuthEvent$SignOut());
          },
        ),
      ),
    );
  }
}
