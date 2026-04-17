import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:migrant_office/navigation/routes/app_router.dart';

class AuthRouterImpl implements AuthRouter {
  const AuthRouterImpl();

  @override
  void showApplications(
    BuildContext context, {
    required void Function(BuildContext) onSuccess,
  }) {
    context.go(AppRouter.applications);
  }
}
