import 'package:flutter_template/navigation/router.dart';
import 'package:flutter_template/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_route.g.dart';

@Riverpod(keepAlive: true)
class CurrentRoute extends _$CurrentRoute {
  @override
  Uri build() {
    final router = ref.watch(goRouter);
    void listener() {
      final uri = router.routeInformationProvider.value.uri;
      state = uri;
      logger.info(uri);

      // todo: Analyticsへログを送信等
    }

    router.routerDelegate.addListener(listener);
    ref.onDispose(() {
      router.routerDelegate.removeListener(listener);
    });

    final uri = router.routeInformationProvider.value.uri;
    logger.info(uri);
    // todo: Analyticsへログを送信等
    return uri;
  }
}
