import 'package:flutter/material.dart';
import 'package:flutter_template/domain/ui/start_up/start_up_screen_entity.dart';
import 'package:flutter_template/presentation/extension/loading_state_updater.dart';
import 'package:flutter_template/presentation/navigation/main_route.dart';
import 'package:flutter_template/presentation/ui/start_up/start_up_screen.dart';
import 'package:flutter_template/provider/httpbin/get_httpbin_response.dart';
import 'package:flutter_template/provider/httpbin/httpbin_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartUpPage extends ConsumerWidget {
  const StartUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(getHttpbinResponseProvider('hogehoge'));
    final usecase = ref.watch(httpbinUseCaseProvider.notifier);
    final usecaseState = ref.watch(httpbinUseCaseProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ///to-do: Screenに渡すasyncValueを全てloadingStateUpdaterに渡す
      /// 使うasyncValueを全て渡すことでLoadingStateが自動更新される
      loadingStateUpdater(
        asyncValueList: [asyncValue, usecaseState],
        widgetRef: ref,
      );
    });

    return StartUpScreen(
      startUpScreenEntity: StartUpScreenEntity(
        httpbinResponse: asyncValue,
        postAction: () => usecase.postHttpBin('id'),
        goMain: () => MainPage.go(context),
      ),
    );
  }
}
