# I. Flutter push notification 
This is a step-by-step of how to use Firebase Cloud Messaging (FCM) to send push notifications in a Flutter application.
# Packages
- [firebase_messaging](https://pub.dev/packages/firebase_messaging)
- [firebase_core](https://pub.dev/packages/firebase_core)
- [firebase_analytics](https://pub.dev/packages/firebase_analytics)
- [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications)

# II. States of an application
| State	 | Description |
|-----:|---------------|
|Foreground|When the application is open, in view and in use.|
|Background|When the application is open, but in the background (minimized). This typically occurs when the user has pressed the "home" button on the device, has switched to another app using the app switcher, or has the aplication open in a different tab (web).|
|Terminated|When the device is locked or the application is not running.|


# III. In Android platform
### Access the registration token
```dart
    // You may set the permission requests to "provisional" which allows the user to choose what type
    // of notifications they would like to receive once the user receives a notification.
    final notificationSettings = await FirebaseMessaging.instance.requestPermission(provisional: true);
    
    // For apple platforms, ensure the APNS token is available before making any FCM plugin API calls
    final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
    if (apnsToken != null) {
     // APNS token is available, make FCM plugin API requests...
    }
```

## Access the registration token
```dart
// Get the FCM registration token```
    String? token = await FirebaseMessaging.instance.getToken();
    if (token != null) {
      print("FCM Token: $token");
    } else {
      print("Failed to get FCM token");
    }
```




## References
- [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging/flutter/client)
- [Cloud message](https://firebase.flutter.dev/docs/messaging/overview)

## Troubleshooting
1. Your project is configured with Android NDK 26.3.11579264, but the following plugin(s) depend on a different Android NDK version:
- Find the lates [NDK](https://developer.android.com/ndk/downloads) version.
- Go to `android\app\build.grade` => add this line code: ```
android {
    ndkVersion "28.2.13676358"
}```
2. Dependency ':flutter_local_notifications' requires core library desugaring to be enabled for :app
- Solution from [Christian](https://stackoverflow.com/questions/79158012/dependency-flutter-local-notifications-requires-core-library-desugaring-to-be)

3. Required minsdk version 
- Make sure your minsdk version is 23. In `android\app\build.gradle`:
```dart

defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.kit"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }
```


4. Unhandled Exception: [core/no-app] No Firebase App '[DEFAULT]' has been created - call Firebase.initializeApp()
```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, 
  );
  runApp(MyApp());
}
```
[!NOTE]
>Heads up notifications require a "max" importance level. Use flutter_local_notifications package to help us:

##. Interact with Notification
- Reference : [Handle interaction](https://firebase.google.com/docs/cloud-messaging/flutter/receive#handling_interaction)



# SERVER INTERGRATION
## 1. Choosing a server option
You'll need to decide on a way to interact with FCM servers: either using the Firebase Admin SDK or the raw protocol. Because of its support across popular programming languages and its convenience methods for handling authentication and authorization, the Firebase Admin SDK is the recommended method.
    
Options for interacting with FCM servers include the following:
- The Firebase Admin SDK, which has support for Node, Java, Python, C#, and Go.
- The FCM HTTP v1 API, a REST API with secure authorization and flexible cross-platform messaging capabilities (the Firebase Admin SDK is based on this protocol and provides all of its inherent advantages).