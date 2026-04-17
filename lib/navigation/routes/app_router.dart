import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:migrant_office/navigation/screen_wrappers/applications/applicaitons_wrapper.dart';
import 'package:migrant_office/navigation/screen_wrappers/auth/auth_wrapper.dart';
import 'package:migrant_office/navigation/screen_wrappers/debug/debug_screen_wrapper.dart';

abstract class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static const String auth = '/auth';

  static const String applications = '/applications';

  static const String debug = '/debug';

  static final routes = [
    GoRoute(
      path: AppRouter.applications,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return NoTransitionPage(
          key: state.pageKey,
          child: const ApplicationsWrapper(),
        );
      },
    ),
    GoRoute(
      path: AppRouter.auth,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return NoTransitionPage(key: state.pageKey, child: const AuthWrapper());
      },
    ),
    GoRoute(
      path: AppRouter.debug,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return NoTransitionPage(
          key: state.pageKey,
          child: const DebugScreenWrapper(),
        );
      },
    ),
  ];
}
