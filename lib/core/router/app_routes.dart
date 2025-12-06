import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/core/di/get_it.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kit/features/auth/presentation/pages/login_option_screen.dart';
import 'package:kit/features/auth/presentation/pages/login_screen.dart';
import 'package:kit/features/auth/presentation/pages/register_screen.dart';
import 'package:kit/features/auth/presentation/pages/send_otp_screen.dart';
import 'package:kit/features/create_post/presentation/screens/create_post.dart';
import 'package:kit/features/create_post/presentation/widget/preview_image.dart';
import 'package:kit/features/home/presentation/pages/home_page.dart';
import 'package:kit/features/home/presentation/pages/media_view.dart';
import 'package:kit/features/home/presentation/pages/view_specific_post.dart';
import 'package:kit/features/notification/presentations/screens/notification_screen.dart';
import 'package:kit/features/profile/presentation/profile_screen.dart';
import 'package:kit/features/settings/presentation/pages/settings_page.dart';
import 'package:kit/features/chatbot/presentation/pages/chatbot_page.dart';
import 'package:kit/shared/model/post/post_entity.dart';


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
  static const String home = '/';
  static const String createPost = '/create_post';
  static const String settings = '/settings';
  static const String loginOptions = '/login_options';
  static const String login = '/login';
  static const String register = '/register';
  static const String sendOtp = '/send_otp';

  static const String createPostPreview = '$createPost/preview';

  static const String notification = '/notification';
  static const String profile = '/profile';

  static const String feedMediaView = '/feed_media_view';
  static const String viewSpecificPost = '/view_specific_post';
  static const String chatbot = '/chatbot';
  

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorNotificationKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellNotification');
  static final _shellNavigatorSettingsKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellSettings');

  /// Router config
  static final GoRouter appRouter = GoRouter(
    initialLocation: home,
    navigatorKey: _rootNavigatorKey,
    refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
    redirect: (context, state) {
      final authState = context.read<AuthBloc>().state;

      final isAuthRoute = [
        loginOptions,
        login,
        register,
        sendOtp,
      ].contains(state.matchedLocation);

      if (authState is AuthUnauthenticated && !isAuthRoute) {
        return loginOptions;
      }

      if (authState is AuthAuthenticated && isAuthRoute) {
        return home;
      }

      return null;
    },  
    routes: [
      // 🏠 HOME SHELL
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              GoRoute(
                path: home,
                pageBuilder: (context, state) => slideTransitionPage(
                  child: const HomePage(),
                ),
              ),

              
              GoRoute(
                path: profile,
                pageBuilder: (context, state) => slideTransitionPage(
                  child: const ProfilePage(),
                ),
              ),
              
              GoRoute(
                path: viewSpecificPost,
                pageBuilder: (context, state) {
                  // Support both PostEntity and postId navigation
                  final extra = state.extra;
                  String postId = extra is String ? extra : '';

                  return slideTransitionPage(
                    child: ViewSpecificPost(
                      postId: postId,
                      currentRoute: state.matchedLocation,
                    ),
                  );
                },
              ),

            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorNotificationKey,
            routes: [
              GoRoute(
                path: notification,
                pageBuilder: (context, state) => slideTransitionPage(
                  child: NotificationScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorSettingsKey,
            routes: [
              GoRoute(
                path: settings,
                pageBuilder: (context, state) => slideTransitionPage(
                  child: const SettingsPage(),
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: chatbot,
        pageBuilder: (context, state) => slideTransitionPage(
          child: const ChatbotPage(),
        ),
      ),
      GoRoute(
        path: createPost,
        pageBuilder: (context, state) => slideTransitionPage(
          child: const CreatePost(),
        ),
        routes: [
          GoRoute(
            path: '$createPostPreview/:mediaPath',
            name: createPostPreview,
            pageBuilder: (context, state) {
              final mediaPath = state.pathParameters['mediaPath'] ?? '';
              return scaleTransitionPage(
                child:  PreviewImage(imagePath: mediaPath),
              );
            },
          ),
        ]
      ),
      GoRoute(
        path: feedMediaView,
        pageBuilder: (context, state){
          final mediaUrls = state.extra != null && (state.extra as Map).containsKey('mediaUrls')
              ? (state.extra as Map)['mediaUrls'] as List<MediaEntity>
              : <MediaEntity>[];
          final initialIndex = state.extra != null && (state.extra as Map).containsKey('initialIndex')
              ? (state.extra as Map)['initialIndex'] as int
              : 0;
          return scaleTransitionPage(
            child: MediaView(
              mediaUrls: mediaUrls,
              initialIndex: initialIndex,
          ));
        }
      ),
      GoRoute(
        path: loginOptions,
        pageBuilder: (context, state) =>
            slideTransitionPage(child: const LoginOptionScreen()),
      ),
      GoRoute(
        path: login,
        pageBuilder: (context, state) =>
            slideTransitionPage(child: const LoginScreen()),
      ),
      GoRoute(
        path: sendOtp,
        pageBuilder: (context, state) =>
            slideTransitionPage(child: const SendOtpScreen()),
        routes: [
          GoRoute(
            path: register,
            pageBuilder: (context, state) =>
                slideTransitionPage(child: const RegisterScreen()),
          ),
        ],
      ),
    ],
  );
}


class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: context.appTheme.borderColor, width: 0.5),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent, 
          elevation: 0,
          currentIndex: navigationShell.currentIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          onTap: _goBranch,
        ),
      )

    );
  }
}

CustomTransitionPage<T> slideTransitionPage<T>({
  required Widget child,
  Duration duration = const Duration(milliseconds: 400),
}) {
  return CustomTransitionPage<T>(
    key: ValueKey(child.hashCode),
    transitionDuration: duration,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end)
          .chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

CustomTransitionPage<T> scaleTransitionPage<T>({
  required Widget child,
  Duration duration = const Duration(milliseconds: 200),
  Curve curve = Curves.easeInOut,
}) {
  return CustomTransitionPage<T>(
    key: ValueKey(child.hashCode),
    transitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Dùng Tween<double> để scale
      final scaleTween = Tween<double>(begin: 0.9, end: 1.0)
          .chain(CurveTween(curve: curve));

      final fadeTween = Tween<double>(begin: 0.0, end: 1.0)
          .chain(CurveTween(curve: curve));

      return FadeTransition(
        opacity: animation.drive(fadeTween),
        child: ScaleTransition(
          scale: animation.drive(scaleTween),
          child: child,
        ),
      );
    },
    child: child,
  );
}

