import 'package:flutter/material.dart';
import 'package:flutter_template/domain/ui/template/template_screen_entity.dart';
import 'package:flutter_template/presentation/extension/loading_state_updater.dart';
import 'package:flutter_template/presentation/navigation/main_route.dart';
import 'package:flutter_template/presentation/navigation/router.dart';
import 'package:flutter_template/presentation/navigation/third_route.dart';
import 'package:flutter_template/presentation/ui/template/template_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThirdPage extends ConsumerWidget {
  const ThirdPage({
    super.key,
  });

  static Future<void> push(BuildContext context) async {
    return const ThirdRoute().push(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ///to-do: Screenに渡すasyncValueを全てloadingStateUpdaterに渡す
      /// 使うasyncValueを全て渡すことでLoadingStateが自動更新される
      loadingStateUpdater(
        asyncValueList: [],
        widgetRef: ref,
      );
    });

    return TemplateScreen(
      templateScreenEntity: TemplateScreenEntity(
        pageName: 'ThirdPage',
        goNext: () {
          MainPage.go(context);
        },
      ),
    );
  }
}
