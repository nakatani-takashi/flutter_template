import 'package:flutter_template/presentation/navigation/main_route.dart';
import 'package:flutter_template/presentation/navigation/tab1_route.dart';
import 'package:go_router/go_router.dart';

const tab1Branch = TypedStatefulShellBranch<BranchAData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<Tab1Route>(
      path: 'tab1_page',
      name: 'tab1_page',
    ),
  ],
);
