import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kit/core/di/getIt.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/core/theme/app_theme.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
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
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          // if(state is AuthUnauthenticated || state is AuthUnauthenticated) {
          //   print('Auth state changed: $state, refreshing router');
            // AppRoutes.appRouter.refresh();
          // }
        },
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
        )

      ),
    );
  }
}
