import 'package:flutter/material.dart';
import 'package:flutter_template/navigation/animation/platform_animation.dart';
import 'package:flutter_template/provider/httpbin/httpbin_appstate.dart';
import 'package:flutter_template/provider/navigation/go_router_provider.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final appState = ref.watch(httpbinAppStateProvider);
    appState.getHttpBin("ホゲホゲ").then((value) {
      value.when(
          success: (success) {
            logger.info("success: $success"); // 成功時
          },
          failure: (failure) {
            logger.warning("error: ${failure.message}");
          });
    });
    return MaterialApp.router(
      title: 'go_router sample',
      theme: ThemeData(
          primarySwatch: Colors.blue, pageTransitionsTheme: platformAnimation),
      routerConfig: router,
    );
  }
}
