import 'package:flutter_template/provider/core/loading_state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void loadingStateUpdater({
  required List<AsyncValue<dynamic>> asyncValueList,
  required WidgetRef widgetRef,
}) {
  final notifier = widgetRef.watch(loadingStateProvider.notifier);
  for (final asyncValue in asyncValueList) {
    if (asyncValue.isLoading) {
      return notifier.show();
    }
  }
  return notifier.hide();
}
