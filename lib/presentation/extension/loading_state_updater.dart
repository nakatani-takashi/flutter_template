import 'package:flutter_template/provider/core/loading_state_provider.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void loadingStateUpdater({
  required List<AsyncValue<dynamic>> asyncValueList,
  required WidgetRef widgetRef,
}) {
  final notifier = widgetRef.watch(loadingStateProvider.notifier);
  for (final asyncValue in asyncValueList) {
    asyncValue.when(
      data: (data) => {
        logger.i('success: ${asyncValue.asData}: $data'),
        notifier.hide(),
      },
      error: (error, _) => {
        logger.w('error: ${asyncValue.asData}: $error'),
        notifier.hide(),
      },
      loading: () => {
        logger.i('loading: ${asyncValue.asData}'),
        notifier.show(),
      },
    );
  }
}
