import 'package:flutter/material.dart';
import 'package:flutter_template/main.dart';
import 'package:flutter_template/navigation/router.dart';
import 'package:flutter_template/navigation/second_route.dart';
import 'package:flutter_template/presentation/third_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({
    required this.title,
    super.key,
  });

  final String title;

  static Future<void> push(BuildContext context, String title) async {
    return SecondRoute(title: title).push<void>(context);
  }

  static Future<void> pushWithUrl(BuildContext context, String title) async {
    return context.push<void>('/second_page?title=$title');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(secondPageCountProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('$title - ページ2'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SecondPage: $count',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: const Text(
                  'Go ThirdPage',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  ThirdPage.push(context);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          ref
              .read(secondPageCountProvider.notifier)
              .update((state) => count + 1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
