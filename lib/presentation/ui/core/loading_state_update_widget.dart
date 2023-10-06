import 'package:flutter/widgets.dart';
import 'package:flutter_template/provider/core/loading_state_provider.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoadingStateUpdateWidget extends ConsumerWidget {
  const LoadingStateUpdateWidget({super.key, required this.asyncValue});
  final AsyncValue<dynamic> asyncValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(loadingStateProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      asyncValue.when(
        data: (data) => {
          logger.i('success: $data'),
          notifier.hide(),
        },
        error: (error, _) => {
          logger.w('error: $error'),
          notifier.hide(),
        },
        loading: () => {
          logger.i('loading: loading'),
          notifier.show(),
        },
      );
    });
    return const SizedBox.shrink();
  }
}
