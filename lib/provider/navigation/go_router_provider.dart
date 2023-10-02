import 'package:flutter/foundation.dart';
import 'package:flutter_template/presentation/navigation/error_route.dart';
import 'package:flutter_template/presentation/navigation/router.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) => GoRouter(
      routes: $appRoutes,
      initialLocation: '/',
      navigatorKey: rootNavigatorKey,
      debugLogDiagnostics: kDebugMode,
      errorBuilder: (context, state) =>
          ErrorRoute(error: state.error!).build(context, state),
      redirect: (context, state) {
        return state.uri.toString();
      },
    );
