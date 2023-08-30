// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $startUpRoute,
    ];

RouteBase get $startUpRoute => GoRouteData.$route(
      path: '/',
      parentNavigatorKey: StartUpRoute.$parentNavigatorKey,
      factory: $StartUpRouteExtension._fromState,
      routes: [
        StatefulShellRouteData.$route(
          parentNavigatorKey: MainRoute.$parentNavigatorKey,
          restorationScopeId: MainRoute.$restorationScopeId,
          factory: $MainRouteExtension._fromState,
          branches: [
            StatefulShellBranchData.$branch(
              navigatorKey: BranchAData.$navigatorKey,
              restorationScopeId: BranchAData.$restorationScopeId,
              routes: [
                GoRouteData.$route(
                  path: 'tab1_page',
                  name: 'tab1_page',
                  factory: $Tab1RouteExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              navigatorKey: BranchBData.$navigatorKey,
              restorationScopeId: BranchBData.$restorationScopeId,
              routes: [
                GoRouteData.$route(
                  path: 'tab2_page',
                  name: 'tab2_page',
                  factory: $Tab2RouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'second_page',
          name: 'second_page',
          factory: $SecondRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'third_page',
          name: 'third_page',
          factory: $ThirdRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'attention_page',
          name: 'attention_page',
          parentNavigatorKey: AttentionRoute.$parentNavigatorKey,
          factory: $AttentionRouteExtension._fromState,
        ),
      ],
    );

extension $StartUpRouteExtension on StartUpRoute {
  static StartUpRoute _fromState(GoRouterState state) => const StartUpRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => const MainRoute();
}

extension $Tab1RouteExtension on Tab1Route {
  static Tab1Route _fromState(GoRouterState state) => const Tab1Route();

  String get location => GoRouteData.$location(
        '/tab1_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Tab2RouteExtension on Tab2Route {
  static Tab2Route _fromState(GoRouterState state) => const Tab2Route();

  String get location => GoRouteData.$location(
        '/tab2_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SecondRouteExtension on SecondRoute {
  static SecondRoute _fromState(GoRouterState state) => SecondRoute(
        title: state.uri.queryParameters['title'],
      );

  String get location => GoRouteData.$location(
        '/second_page',
        queryParams: {
          if (title != null) 'title': title,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThirdRouteExtension on ThirdRoute {
  static ThirdRoute _fromState(GoRouterState state) => const ThirdRoute();

  String get location => GoRouteData.$location(
        '/third_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AttentionRouteExtension on AttentionRoute {
  static AttentionRoute _fromState(GoRouterState state) =>
      const AttentionRoute();

  String get location => GoRouteData.$location(
        '/attention_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
