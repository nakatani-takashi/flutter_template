import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_template/main.dart';
import 'package:flutter_template/navigation/router.dart';
import '../navigation/attention_route.dart';

class AttentionPage extends ConsumerWidget {
  const AttentionPage({
    super.key,
  });

  static Future<void> push(BuildContext context) async {
    return const AttentionRoute().push<void>(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(attentionPageCountProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('AttentionPage'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'AttentionPage: $count',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          ref
              .read(attentionPageCountProvider.notifier)
              .update((state) => count + 1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
