import 'package:core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:migrant_office/app/app_root_router.dart';
import 'package:migrant_office/navigation/routes/app_router.dart';

class AppRootRouterImpl implements AppRootRouter {
  const AppRootRouterImpl({required GoRouter router}) : _router = router;

  final GoRouter _router;

  @override
  Future<void> showDebugScreen(BuildContext context) {
    return _router.push(AppRouter.debug);
  }

  @override
  Future<void> showFailure(
    BuildContext context, {
    required AppFailure failure,
    void Function(AppFailure)? onRetry,
    void Function(AppFailure)? onPopError,
  }) {
    // TODO: implement showFailure
    throw UnimplementedError();
  }
}
