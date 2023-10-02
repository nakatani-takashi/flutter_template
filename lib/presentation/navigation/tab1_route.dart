import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/page/bottom_navigation/tab1_page.dart';
import 'package:go_router/go_router.dart';

class Tab1Route extends GoRouteData {
  const Tab1Route();

  @override
  Widget build(BuildContext context, GoRouterState state) => const Tab1Page();
}
