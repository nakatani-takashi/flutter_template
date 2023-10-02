import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../page/bottom_navigation/bottom_navigation_bar.dart';
import 'router.dart';
import 'tab1_route.dart';

class MainRoute extends StatefulShellRouteData {
  const MainRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return MainPage(
      navigationShell: navigationShell,
    );
  }

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class BranchAData extends StatefulShellBranchData {
  const BranchAData();

  static final GlobalKey<NavigatorState> $navigatorKey = tab1NavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class BranchBData extends StatefulShellBranchData {
  const BranchBData();

  static final GlobalKey<NavigatorState> $navigatorKey = tab2NavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
}

class MainPage extends ConsumerWidget {
  const MainPage({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  static Future<void> go(BuildContext context) async {
    return const Tab1Route().go(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TemplateBottomNavigationBar(navigationShell: navigationShell);
  }
}
