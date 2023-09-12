import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/navigation/animation/platform_animation.dart';
import 'package:flutter_template/navigation/provider/go_router_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'go_router sample',
      theme: ThemeData(
          primarySwatch: Colors.blue, pageTransitionsTheme: platformAnimation),
      routerConfig: router,
    );
  }
}