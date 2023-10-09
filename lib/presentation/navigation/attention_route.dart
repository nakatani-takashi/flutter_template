import 'package:flutter/cupertino.dart';
import 'package:flutter_template/presentation/navigation/routers/router.dart';
import 'package:flutter_template/presentation/ui/attention_page.dart';
import 'package:go_router/go_router.dart';

class AttentionRoute extends GoRouteData {
  const AttentionRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const CupertinoPage(
        fullscreenDialog: true,
        child: AttentionPage(),
      );

  // Root表示するためにKeyを設定する
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
}
