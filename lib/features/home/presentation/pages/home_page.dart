import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/core/di/injectable.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/home/presentation/widgets/home_app_bar.dart';
import 'package:kit/features/home/presentation/widgets/welcome_section.dart';
import 'package:kit/shared/blocs/locale/locale_bloc.dart';
import 'package:kit/shared/services/firebase_messaging_service.dart';

/// Home page of the application
/// 
/// Displays welcome message and provides navigation to other features.
/// Handles Firebase messaging for chat notifications.
class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.analytics,
    required this.observer,
  });

  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final FirebaseMessagingService _messagingService;

  @override
  void initState() {
    super.initState();
    _messagingService = getIt<FirebaseMessagingService>();
    _setupInteractedMessage();
  }

  /// Handles incoming messages from Firebase Cloud Messaging
  void _handleMessage(RemoteMessage message) {
    if (message.data['type'] == 'chat') {
      context.push(AppRoutes.chat);
    }
  }

  /// Sets up Firebase messaging for app interactions
  Future<void> _setupInteractedMessage() async {
    final initialMessage = await _messagingService.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    _messagingService.onMessageOpenedApp.listen(_handleMessage);
  }

  void _navigateToNewContactSchedule() {
    context.push('/'); // TODO: Update to proper route constant
  }

  void _toggleLanguage() {
    context.read<LocaleBloc>().add(const LocaleEvent.toggleLocale());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        title: context.locale.hello('Xander Dson'),
        onAnalyticsPressed: _navigateToNewContactSchedule,
        onAddPressed: _toggleLanguage,
      ),
      body: const WelcomeSection(),
    );
  }
}
