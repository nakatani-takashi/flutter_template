import 'package:flutter_template/presentation/navigation/main_route.dart';
import 'package:flutter_template/presentation/navigation/tab2_route.dart';
import 'package:go_router/go_router.dart';

const tab2Branch = TypedStatefulShellBranch<BranchBData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<Tab2Route>(
      path: 'tab2_page',
      name: 'tab2_page',
    ),
  ],
);
