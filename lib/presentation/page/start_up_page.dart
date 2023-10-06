import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/navigation/main_route.dart';
import 'package:flutter_template/provider/api/core/user_token_state_provider.dart';
import 'package:flutter_template/provider/core/loading_state_provider.dart';
import 'package:flutter_template/provider/httpbin/get_httpbin_response.dart';
import 'package:flutter_template/provider/httpbin/httpbin_usecase.dart';
import 'package:flutter_template/provider/navigation/current_route_state_provider.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartUpPage extends ConsumerWidget {
  const StartUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
    final asyncValue = ref.watch(getHttpbinResponseProvider('hogehoge'));
    final usecase = ref.watch(httpbinControllerProvider.notifier);
    final usecaseState = ref.watch(httpbinControllerProvider);
    final userToken = ref.watch(userTokenStateProvider.notifier);
    final loadingState = ref.watch(loadingStateProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      userToken.updateToken('updateToken');
      // asyncValue.when(
      //   data: (data) => {logger.i('success: $data')},
      //   error: (error, _) => {logger.w('error: $error')},
      //   loading: () => {logger.i('loading: loading')},
      // );

      // usecaseState.when(
      //   data: (data) => {logger.i('usecase: success')},
      //   error: (error, _) => {logger.w('usecase: error: $error')},
      //   loading: () => {logger.i('usecase: loading')},
      // );
      // checkAnyTrue([asyncValue.isLoading, usecaseState.isLoading], ref);
    });

    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Stack(
              children: [
                ElevatedButton(
                  child: asyncValue.when(
                    data: (data) => const Text(
                      'success',
                      style: TextStyle(color: Colors.white),
                    ),
                    error: (error, _) => const Text(
                      'error',
                      style: TextStyle(color: Colors.white),
                    ),
                    loading: () => const Text(
                      'loading',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    usecase.postHttpBin('cfrytgui');
                    // MainPage.go(context);
                  },
                ),
                if (loadingState) const CircularProgressIndicator(),
              ],
            ),
          ),
        ),
        // LoadinStateUpdateWidget(asyncValue: asyncValue),
        LoadinStateUpdateWidget(asyncValue: usecaseState),
      ],
    );
  }
}

class LoadinStateUpdateWidget extends ConsumerWidget {
  const LoadinStateUpdateWidget({super.key, required this.asyncValue});
  final AsyncValue<dynamic> asyncValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(loadingStateProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      asyncValue.when(
        data: (data) => {
          logger.i('success: $data'),
          notifier.hide(),
        },
        error: (error, _) => {
          logger.w('error: $error'),
          notifier.hide(),
        },
        loading: () => {
          logger.i('loading: loading'),
          notifier.show(),
        },
      );
    });
    return const SizedBox.shrink();
  }
}
