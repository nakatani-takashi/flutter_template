import 'package:flutter/material.dart';
import 'package:flutter_template/navigation/tab2_route.dart';
import 'package:go_router/go_router.dart';

import '../presentation/start_up_page.dart';
import 'attention_route.dart';
import 'main_route.dart';
import 'second_route.dart';
import 'tab1_route.dart';
import 'third_route.dart';

part 'router.g.dart';

/// NavigatorKey
final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'rootNavigator');
final tab1NavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'tab1');
final tab2NavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'tab2');

/// TypedGoRoute
@TypedGoRoute<StartUpRoute>(
  path: '/',
  routes: [
    TypedStatefulShellRoute<MainRoute>(
      branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
        TypedStatefulShellBranch<BranchAData>(
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<Tab1Route>(
              path: 'tab1_page',
              name: 'tab1_page',
            ),
          ],
        ),
        TypedStatefulShellBranch<BranchBData>(
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<Tab2Route>(
              path: 'tab2_page',
              name: 'tab2_page',
            ),
          ],
        ),
      ],
    ),
    TypedGoRoute<SecondRoute>(
      path: 'second_page',
      name: 'second_page',
    ),
    TypedGoRoute<ThirdRoute>(
      path: 'third_page',
      name: 'third_page',
    ),
    TypedGoRoute<AttentionRoute>(
      path: 'attention_page',
      name: 'attention_page',
    ),
  ],
)
class StartUpRoute extends GoRouteData {
  const StartUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const StartUpPage();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
}
