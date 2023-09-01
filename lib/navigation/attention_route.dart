import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../presentation/attention_page.dart';
import 'router.dart';

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
