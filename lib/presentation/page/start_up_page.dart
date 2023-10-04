import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/navigation/main_route.dart';
import 'package:flutter_template/provider/api/core/user_token.dart';
import 'package:flutter_template/provider/httpbin/get_httpbin_response.dart';
import 'package:flutter_template/provider/httpbin/httpbin_usecase.dart';
import 'package:flutter_template/provider/navigation/current_route.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartUpPage extends ConsumerWidget {
  const StartUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// currentRouteを活性化させる
    ref.watch(currentRouteProvider);
    final asyncValue = ref.watch(getHttpbinResponseProvider('hogehoge'));
    final usecase = ref.watch(httpbinControllerProvider.notifier);
    final usecaseState = ref.watch(httpbinControllerProvider);
    final userToken = ref.watch(userTokenProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      userToken.updateToken('updateToken');
      asyncValue.when(
          data: (data) => {logger.i('success: $data')},
          error: (error, _) => {logger.w('error: $error')},
          loading: () => {logger.i('loading: loading')},);

      usecaseState.when(
          data: (data) => {logger.i('usecase: success')},
          error: (error, _) => {logger.w('usecase: error: $error')},
          loading: () => {logger.i('usecase: loading')},);
    });

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text(
            'go main',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            // usecase.errorHttpBin();
            MainPage.go(context);
          },
        ),
      ),
    );
  }
}
