import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../presentation/third_page.dart';

class ThirdRoute extends GoRouteData {
  const ThirdRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ThirdPage();
}
