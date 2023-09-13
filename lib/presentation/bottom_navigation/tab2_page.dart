import 'package:flutter/material.dart';
import 'package:flutter_template/main.dart';
import 'package:flutter_template/presentation/attention_page.dart';
import 'package:flutter_template/presentation/second_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Tab2Page extends ConsumerWidget {
  const Tab2Page({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(tab2PageCountProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('タブ2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tab2Page: $count',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: const Text(
                  'Go SecondPage',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  SecondPage.push(context, 'タブ2');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: const Text(
                  'Go Modal',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  AttentionPage.push(context);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          ref.read(tab2PageCountProvider.notifier).update((state) => count + 1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
