import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:kit/core/di/getIt.dart';
import 'package:kit/shared/services/firebase_messaging_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

import 'firebase_options.dart';
import 'app.dart';

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  print('notificationTapBackground tapped: ${notificationResponse.payload}');
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("Handling a background message: ${message.data.entries}");
}

// Define notification channels
const AndroidNotificationChannel highImportanceChannel = AndroidNotificationChannel(
  'high_importance_channel',
  'High Importance Notifications',
  description: 'This channel is used for important notifications.',
  importance: Importance.max,
);
const AndroidNotificationChannel promoChannel = AndroidNotificationChannel(
  'promo_channel',
  'Khuyến mãi',
  description: 'Thông báo khuyến mãi & giảm giá',
  importance: Importance.low,
);

const AndroidNotificationChannel systemChannel = AndroidNotificationChannel(
  'system_channel',
  'Thông báo hệ thống',
  description: 'Cảnh báo và cập nhật hệ thống',
  importance: Importance.max,
  sound: RawResourceAndroidNotificationSound('notification_sound_1'),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  configureDependencies();
  await _setupNotifications();
  await _setupFirebaseMessaging();
  runApp(const MyApp());
}

Future<void> _setupNotifications() async {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  const AndroidInitializationSettings androidInitializationSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  await flutterLocalNotificationsPlugin
    .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
    ?.createNotificationChannel(highImportanceChannel);
  await flutterLocalNotificationsPlugin
    .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
    ?.createNotificationChannel(promoChannel);
  await flutterLocalNotificationsPlugin
    .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
    ?.createNotificationChannel(systemChannel);

  await flutterLocalNotificationsPlugin.initialize(
    const InitializationSettings(android: androidInitializationSettings),
    onDidReceiveNotificationResponse:
        (NotificationResponse notificationResponse) async {
      print('Notification tapped: ${notificationResponse.payload}');
    },
    onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
  );
}

Future<void> _setupFirebaseMessaging() async {
  final firebaseMessaging = getIt<FirebaseMessagingService>();

  NotificationSettings settings = await firebaseMessaging.requestPermission();

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    try {
      final fcmToken = await firebaseMessaging.getToken();
      final pref = await SharedPreferences.getInstance();
      final String? existingToken = pref.getString('fcmToken');
      if (existingToken == null) {
        await pref.setString('fcmToken', fcmToken ?? '');
      }
      if (kDebugMode) {
        print("FCM Token: $fcmToken");
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error getting FCM token: $e');
      }
    }
  } else {
    if (kDebugMode) {
      print('User declined or has not accepted permission');
    }
  }

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
  // A Stream which posts a RemoteMessage when the application is opened from a background state.
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){
    final chatId = message.data['chat_id'];
    if (chatId != null) {
      
      
    }
  });
}

void _handleForegroundMessage(RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;

  if (notification != null && android != null) {
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          highImportanceChannel.id,
          highImportanceChannel.name,
          channelDescription: highImportanceChannel.description,
          icon: '@mipmap/ic_launcher',
          actions: const <AndroidNotificationAction>[ 
            AndroidNotificationAction('id_1', 'Action 1'),
            AndroidNotificationAction('id_2', 'Action 2'),
          ],
        ),
      ),
    );
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          promoChannel.id,
          promoChannel.name,
          channelDescription: promoChannel.description,
          icon: '@mipmap/ic_launcher',
          actions: const <AndroidNotificationAction>[ 
            AndroidNotificationAction('id_1', 'Action 1'),
            AndroidNotificationAction('id_2', 'Action 2'),
          ],
        ),
      ),
    );
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          systemChannel.id,
          systemChannel.name,
          channelDescription: systemChannel.description,
          icon: '@mipmap/ic_launcher',
          actions: const <AndroidNotificationAction>[ 
            AndroidNotificationAction('id_1', 'Action 1'),
            AndroidNotificationAction('id_2', 'Action 2'),
          ],
        ),
      ),
    );

  }
}