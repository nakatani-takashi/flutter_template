import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/navigation/animation/platform_animation.dart';
import 'package:flutter_template/provider/api/core/user_token.dart';
import 'package:flutter_template/provider/httpbin/get_httpbin_response.dart';
import 'package:flutter_template/provider/httpbin/httpbin_controller.dart';
import 'package:flutter_template/provider/navigation/go_router_provider.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final asyncValue = ref.watch(getHttpbinResponseProvider("hogehoge"));
      final usecase = ref.watch(httpbinControllerProvider.notifier);
      final userToken = ref.watch(userTokenProvider.notifier);
      userToken.updateToken("updateToken");
      asyncValue.when(
          data: (data) => {
                data.when(success: (success) {
                  logger.i("success: $success"); // 成功時
                }, failure: (failure) {
                  logger.w("error: ${failure.message}");
                })
              },
          error: (error, _) => {},
          loading: () => {});

      usecase.postHttpBin(ref.watch(userTokenProvider));

      usecase.errorHttpBin();
    });

    return MaterialApp.router(
      title: 'go_router sample',
      theme: ThemeData(
          primarySwatch: Colors.blue, pageTransitionsTheme: platformAnimation),
      routerConfig: router,
    );
  }
}
