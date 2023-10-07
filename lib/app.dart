import 'package:flutter/material.dart';
import 'package:flutter_template/const/core/theme.dart';
import 'package:flutter_template/presentation/navigation/animation/platform_animation.dart';
import 'package:flutter_template/provider/api/core/user_token_state_provider.dart';
import 'package:flutter_template/provider/core/loading_state_provider.dart';
import 'package:flutter_template/provider/navigation/current_route_state_provider.dart';
import 'package:flutter_template/provider/navigation/go_router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingState = ref.watch(loadingStateProvider);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// 常に監視させたいProviderを活性化させる
      ref.watch(currentRouteStateProvider);
      /// userTokenの更新
      ref.watch(userTokenStateProvider.notifier).updateToken('updateToken');
    });

    return MaterialApp.router(
      title: 'go_router sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: platformAnimation,
        fontFamily: ThemeConst.jpFont,
      ),
      routerConfig: ref.watch(goRouterProvider),
      builder: (context, child) {
        return Stack(
          children: [
            child!,
            if (loadingState)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        );
      },
    );
  }
}
