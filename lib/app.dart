import 'package:flutter/material.dart';
import 'package:flutter_template/const/core/theme.dart';
import 'package:flutter_template/presentation/navigation/animation/platform_animation.dart';
import 'package:flutter_template/provider/navigation/current_route_state_provider.dart';
import 'package:flutter_template/provider/navigation/go_router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// currentRouteを活性化させる
      ref.watch(currentRouteStateProvider);
    });

    return MaterialApp.router(
      title: 'go_router sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: platformAnimation,
        fontFamily: ThemeConst.jpFont,
      ),
      routerConfig: ref.watch(goRouterProvider),
    );
  }
}
