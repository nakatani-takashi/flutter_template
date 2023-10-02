import 'package:flutter/material.dart';
import 'package:flutter_template/main.dart';
import 'package:flutter_template/presentation/navigation/main_route.dart';
import 'package:flutter_template/presentation/navigation/router.dart';
import 'package:flutter_template/presentation/navigation/third_route.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class ThirdPage extends ConsumerWidget {
  const ThirdPage({
    super.key,
  });

  static Future<void> push(BuildContext context) async {
    return const ThirdRoute().push(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(thirdPageCountProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ページ3'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ThirdPage: $count',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: const Text(
                  'Go Back',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: const Text(
                  'Go Main',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  MainPage.go(context);
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
              .read(thirdPageCountProvider.notifier)
              .update((state) => count + 1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
