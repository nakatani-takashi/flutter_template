import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/second_page.dart';

class SecondRoute extends GoRouteData {
  const SecondRoute({
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SecondPage(title: title ?? '');
  }
}