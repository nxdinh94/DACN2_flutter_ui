import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

/// Service for handling Firebase Cloud Messaging
/// 
/// Manages FCM token registration, message handling,
/// and notification permissions.
@lazySingleton
class FirebaseMessagingService {
  final FirebaseMessaging _firebaseMessaging;
  
  FirebaseMessagingService(this._firebaseMessaging);

  /// Gets the FCM token for this device
  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }

  /// Requests notification permissions from the user
  Future<NotificationSettings> requestPermission() async {
    return await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  /// Gets the initial message if the app was opened from a terminated state
  Future<RemoteMessage?> getInitialMessage() async {
    return await _firebaseMessaging.getInitialMessage();
  }

  /// Sets up a listener for when a notification is tapped while the app is in background
  Stream<RemoteMessage> get onMessageOpenedApp {
    return FirebaseMessaging.onMessageOpenedApp;
  }

  /// Sets up a listener for when a message is received while the app is in foreground
  Stream<RemoteMessage> get onMessage {
    return FirebaseMessaging.onMessage;
  }
}
