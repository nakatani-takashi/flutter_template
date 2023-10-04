import 'package:flutter_template/provider/navigation/go_router_provider.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_route_state_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentRouteState extends _$CurrentRouteState {
  @override
  Uri build() {
    final router = ref.watch(goRouterProvider);
    void listener() {
      final uri = router.routeInformationProvider.value.uri;
      state = uri;
      logger.i(uri);

      // to-do: Analyticsへログを送信等
    }

    router.routerDelegate.addListener(listener);
    ref.onDispose(() {
      router.routerDelegate.removeListener(listener);
    });

    final uri = router.routeInformationProvider.value.uri;
    logger.i(uri);
    // to-do: Analyticsへログを送信等
    return uri;
  }
}
