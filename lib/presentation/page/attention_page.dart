import 'package:flutter/material.dart';
import 'package:flutter_template/main.dart';
import 'package:flutter_template/presentation/navigation/attention_route.dart';
import 'package:flutter_template/presentation/navigation/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


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