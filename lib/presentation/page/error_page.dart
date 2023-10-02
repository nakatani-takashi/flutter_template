import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    required this.error,
    super.key,
  });

  static String get pageName => 'error_page';
  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ErrorPage',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Error: $error',
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
          ],
        ),
      ),
    );
  }
}
