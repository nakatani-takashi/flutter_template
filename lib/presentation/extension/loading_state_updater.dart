import 'package:flutter/material.dart';
import 'package:flutter_template/provider/core/loading_state_provider.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void loadingStateUpdater({
  required List<AsyncValue<dynamic>> asyncValueList,
  required WidgetRef widgetRef,
  required BuildContext context,
}) {
  final notifier = widgetRef.watch(loadingStateProvider.notifier);
  _asyncLogger(asyncValueList: asyncValueList, context: context);
  _updater(notifier: notifier, asyncValueList: asyncValueList);
}

void _asyncLogger({
  required List<AsyncValue<dynamic>> asyncValueList,
  required BuildContext context,
}) {
  for (final asyncValue in asyncValueList) {
    asyncValue.when(
      data: (data) => {
        logger.i('success: ${asyncValue.runtimeType}: $data'),
      },
      error: (error, _) => {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              error.toString(),
            ),
          ),
        ),
        logger.w('error: ${asyncValue.runtimeType}: $error'),
      },
      loading: () => {
        logger.i('loading: ${asyncValue.runtimeType}'),
      },
    );
  }
}

void _updater({
  required LoadingState notifier,
  required List<AsyncValue<dynamic>> asyncValueList,
}) {
  for (final asyncValue in asyncValueList) {
    if (asyncValue.isLoading) {
      return notifier.show();
    }
  }
  return notifier.hide();
}
