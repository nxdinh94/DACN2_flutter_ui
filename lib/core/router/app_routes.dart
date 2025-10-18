// App routes configuration
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/app.dart';
import 'package:kit/empty_screen.dart';
import 'package:kit/features/auth/presentation/pages/login_screen.dart';
import 'package:kit/features/home/presentation/pages/home_page.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String contacts = '/contacts';
  static const String contactDetail = '/contact-detail';
  static const String chat = '/chat';
  static const String settings = '/settings';

  /// The route configuration.
  static final GoRouter appRouter = GoRouter(
    initialLocation: home,
    routes: <RouteBase>[
      GoRoute(
        path: splash,
        builder: (BuildContext context, GoRouterState state) {
          return const NewContactSchedulePage();
        },
      ),
      GoRoute(
        path: home,
        builder: (BuildContext context, GoRouterState state) {
          return HomePage(
            analytics: MyApp.analytics,
            observer: MyApp.observer,
          );
        },
      ),
      GoRoute(
        path: login,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
    ],
  );
}

