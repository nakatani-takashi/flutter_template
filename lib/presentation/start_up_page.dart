import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/navigation/provider/current_route.dart';

import '../navigation/main_route.dart';

class StartUpPage extends ConsumerWidget {
  const StartUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// currentRouteを活性化させる
    ref.watch(currentRouteProvider);

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "go main",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            MainPage.go(context);
          },
        ),
      ),
    );
  }
}
