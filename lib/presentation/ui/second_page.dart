import 'package:flutter/material.dart';
import 'package:flutter_template/domain/ui/template/template_screen_entity.dart';
import 'package:flutter_template/presentation/extension/loading_state_updater.dart';
import 'package:flutter_template/presentation/navigation/router.dart';
import 'package:flutter_template/presentation/navigation/second_route.dart';
import 'package:flutter_template/presentation/ui/template/template_screen.dart';
import 'package:flutter_template/presentation/ui/third_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({
    required this.title,
    super.key,
  });

  final String title;

  static Future<void> push(BuildContext context, String title) async {
    return SecondRoute(title: title).push<void>(context);
  }

  static Future<void> pushWithUrl(BuildContext context, String title) async {
    return context.push<void>('/second_page?title=$title');
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
        pageName: '$title to SecondPage',
        goNext: () {
          ThirdPage.push(context);
        },
      ),
    );
  }
}
