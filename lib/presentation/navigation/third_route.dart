import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/page/third_page.dart';
import 'package:go_router/go_router.dart';

class ThirdRoute extends GoRouteData {
  const ThirdRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ThirdPage();
}
