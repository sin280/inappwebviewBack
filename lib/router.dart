import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/feature/main_content/main_content.dart';
import 'package:sample/feature/web_view_page/web_view_page.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainContent();
      },
      routes: <RouteBase>[
        GoRoute(
          path: WebViewPage.path,
          builder: (BuildContext context, GoRouterState state) {
            return const WebViewPage();
          },
        ),
      ],
    ),
  ],
);
