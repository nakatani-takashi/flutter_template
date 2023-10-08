import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/ui/attention_page.dart';
import 'package:flutter_template/presentation/ui/second_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Tab1Page extends ConsumerWidget {
  const Tab1Page({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タブ1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tab1Page',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: const Text(
                  'Go SecondPage',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  SecondPage.push(context, 'タブ1');
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
    );
  }
}
