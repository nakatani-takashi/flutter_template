import 'package:flutter/material.dart';
import 'package:flutter_template/domain/start_up/start_up_screen_entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartUpScreen extends ConsumerWidget {
  const StartUpScreen({
    super.key,
    required this.startUpScreenEntity,
  });
  final StartUpScreenEntity startUpScreenEntity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              startUpScreenEntity.httpbinResponse.when(
                data: (data) => 'success',
                error: (error, _) => 'error',
                loading: () => 'loading',
              ),
            ),
            ElevatedButton(
              child: const Text('post action'),
              onPressed: () => startUpScreenEntity.postAction(),
            ),
            ElevatedButton(
              child: const Text('go main'),
              onPressed: () => startUpScreenEntity.goMain(),
            ),
          ],
        ),
      ),
    );
  }
}
