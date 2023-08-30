import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/navigation/router.dart';
import 'utils/logger.dart';

class CurrentRoute extends Notifier<Uri> {
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