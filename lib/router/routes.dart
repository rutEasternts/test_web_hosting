import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/cloud_sign_in.dart';
import 'package:mcs_accounting_flutter_web/router/route_constant.dart';

import 'package:mcs_accounting_flutter_web/di/injection_container.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/splash/splash.dart';
import 'package:mcs_accounting_flutter_web/main.dart';
import 'navigation_service.dart';

class AppRouter{

  static final goRouter = GoRouter(
    initialLocation: AppRouterPath.splash,
    routes: routes,
    navigatorKey: getIt<NavigationService>().navigatorKey,
    // observers: <NavigatorObserver>[routeObserver],
  );

  static List<RouteBase> routes=[
    GoRoute(
        name: RouteNames.routeNameSplash,
        path: AppRouterPath.splash,
        builder: (BuildContext context, GoRouterState state) =>   const SplashPage(),
    ),
    GoRoute(
        name: RouteNames.routeNameCloudSignIn,
        path: AppRouterPath.cloudSignIn,
        builder: (BuildContext context, GoRouterState state) =>   const CloudSignIn()
    ),
    GoRoute(
        name: RouteNames.routeNameAccountSignIn,
        path: AppRouterPath.accountSignIn,
        builder: (BuildContext context, GoRouterState state) =>   const AccountSignIn()
    )
  ];
}