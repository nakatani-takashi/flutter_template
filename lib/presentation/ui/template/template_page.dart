import 'package:flutter/material.dart';
import 'package:flutter_template/domain/ui/template/template_screen_entity.dart';
import 'package:flutter_template/presentation/extension/loading_state_updater.dart';
import 'package:flutter_template/presentation/ui/template/template_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TemplatePage extends ConsumerWidget {
  const TemplatePage({
    super.key,
  });

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
        pageName: '',
        goNext: () {},
      ),
    );
  }
}
