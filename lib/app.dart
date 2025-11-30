import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kit/core/di/get_it.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/core/theme/app_theme.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kit/features/create_post/presentation/bloc/cache_thumbnail_video.dart';
import 'package:kit/features/create_post/presentation/bloc/create_post_bloc.dart';
import 'package:kit/features/home/presentation/bloc/home_bloc/for_you_bloc.dart';
import 'package:kit/features/post_interaction/presentation/bloc/post_interaction_bloc.dart';
import 'package:kit/features/profile/presentation/bloc/posts_bloc/posts_bloc.dart';
import 'package:kit/features/profile/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:kit/shared/blocs/locale/locale_bloc.dart';
import 'package:kit/shared/l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>()
        ),
        BlocProvider<LocaleBloc>(
          create: (context) => getIt<LocaleBloc>()
        ),
        BlocProvider<CreatePostBloc>(
          create: (context) => getIt<CreatePostBloc>()
        ),
        BlocProvider<CacheThumbnailVideo>(
          create: (context) => getIt<CacheThumbnailVideo>()
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => getIt<ProfileBloc>()
        ),
        BlocProvider<PostsBloc>(
          create: (context) => getIt<PostsBloc>()
        ),
        BlocProvider<PostInteractionBloc>(
          create: (context) => getIt<PostInteractionBloc>()
        ),
        BlocProvider<HomeBloc>(
          create: (context) => getIt<HomeBloc>()
        ),

      ],
      child: BlocBuilder<LocaleBloc, LocaleState>(
        builder: (BuildContext context, LocaleState state) {
          return MaterialApp.router(
            locale: state.locale,
            routerConfig: AppRoutes.appRouter,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.light,
            supportedLocales: const [
              Locale('en'), // English
              Locale('vi'), // Vietnamese
            ],
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
