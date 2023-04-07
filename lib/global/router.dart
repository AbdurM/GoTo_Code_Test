import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goto_code_test/features/home/home_page.dart';
import 'package:goto_code_test/features/map/map_page.dart';
import 'package:goto_code_test/global/constants/route_names.dart';
import 'package:goto_code_test/global/constants/strings.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          name: RouteNames.mapPage,
          path: RouteNames.mapPage,
          builder: (BuildContext context, GoRouterState state) {
            return MapPage(
              latitude: double.parse(state.queryParams[Strings.latitude]!),
              longitude: double.parse(state.queryParams[Strings.longitude]!),
            );
          },
        ),
      ],
    ),
  ],
);
