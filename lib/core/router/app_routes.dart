// App routes configuration
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/app.dart';
import 'package:kit/features/auth/presentation/pages/login_option_screen.dart';
import 'package:kit/features/auth/presentation/pages/login_screen.dart';
import 'package:kit/features/auth/presentation/pages/register_screen.dart';
import 'package:kit/features/auth/presentation/pages/send_otp_screen.dart';
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
  static const String loginOptions = '/login-options';
  static const String login = '/login';
  static const String register = '/register';
  static const String sendOtp = '/send-otp';
  static const String home = '/home';
  static const String contacts = '/contacts';
  static const String contactDetail = '/contact-detail';
  static const String chat = '/chat';
  static const String settings = '/settings';

  /// The route configuration.
  static final GoRouter appRouter = GoRouter(
    initialLocation: home,
    redirect: (context, state) {
      final authState = context.read<AuthBloc>().state;
      final isGoingToLoginOrOtp =
          state.matchedLocation == AppRoutes.login ||
          state.matchedLocation == AppRoutes.loginOptions ||
          state.matchedLocation == AppRoutes.sendOtp ||
          state.matchedLocation == '${AppRoutes.sendOtp}${AppRoutes.register}';

      if (authState is AuthUnauthenticated && !isGoingToLoginOrOtp) {
        return AppRoutes.loginOptions;
      }
      if (authState is AuthAuthenticated && isGoingToLoginOrOtp) {
        return AppRoutes.home;
      }
      print('No redirection needed');
      return null;
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
        path: sendOtp,
        builder: (BuildContext context, GoRouterState state) {
          return const SendOtpScreen();
        },
        routes: [
          GoRoute(
            path: register,
            builder: (BuildContext context, GoRouterState state) {
              return RegisterScreen();
            },
          ),
        ]
      ),
      GoRoute(
        path: loginOptions,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginOptionScreen();
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

