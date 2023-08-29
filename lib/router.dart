import 'package:flutter/material.dart';
import 'package:flutter_template/main.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final goRouter = GoRouter(
  initialLocation: '/home',
  routes: $appRoutes,
);

@TypedGoRoute<HomeRoute>(
  path: '/home',
  // routes: <TypedGoRoute<GoRouteData>>[
  //   TypedGoRoute<FamilyRoute>(
  //     path: 'family/:familyId',
  //   )
  // ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<NextRoute>(
  path: '/next',
  // routes: <TypedGoRoute<GoRouteData>>[
  //   TypedGoRoute<FamilyRoute>(
  //     path: 'family/:familyId',
  //   )
  // ],
)
class NextRoute extends GoRouteData {
  const NextRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const NextScreen();
}