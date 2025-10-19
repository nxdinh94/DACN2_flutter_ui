// App routes configuration
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/app.dart';
import 'package:kit/features/auth/presentation/pages/login_screen.dart';
import 'package:kit/features/home/presentation/pages/home_page.dart';

import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../di/getIt.dart';
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _sub = stream.listen((_) => notifyListeners());
  }
  late final StreamSubscription _sub;
  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}

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
    redirect: (context, state) {
      print(context.read<AuthBloc>().state);
      if(context.read<AuthBloc>().state is AuthUnauthenticated) {
        return login;
      } else {
        return null;
      }
    },
    refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
    routes: <RouteBase>[
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

