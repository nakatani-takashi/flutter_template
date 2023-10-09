import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/navigation/attention_route.dart';
import 'package:flutter_template/presentation/navigation/main_route.dart';
import 'package:flutter_template/presentation/navigation/routers/tab1_branch.dart';
import 'package:flutter_template/presentation/navigation/routers/tab2_branch.dart';
import 'package:flutter_template/presentation/navigation/second_route.dart';
import 'package:flutter_template/presentation/navigation/tab1_route.dart';
import 'package:flutter_template/presentation/navigation/tab2_route.dart';
import 'package:flutter_template/presentation/navigation/third_route.dart';
import 'package:flutter_template/presentation/ui/start_up/start_up_page.dart';
import 'package:go_router/go_router.dart';

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
        tab1Branch,
        tab2Branch,
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
