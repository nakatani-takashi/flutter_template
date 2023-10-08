import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/ui/error_page.dart';
import 'package:go_router/go_router.dart';

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});
  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ErrorPage(error: error);
}
