// Common utility functions and constants

class AppConstants {
  static const String appName = 'Keep In Touch';
  static const String baseUrl = 'http://192.168.2.14:4000/';
  
  // API endpoints
  static const String loginEndpoint = 'api/auth/login';
  static const String registerEndpoint = 'api/auth/register';
  static const String logoutEndpoint = 'api/auth/logout';
  static const String refreshTokenEndpoint = 'api/auth/refresh-token';
  static const String sendOtpEndpoint = 'api/auth/otp';
  
  // Storage keys
  static const String tokenKey = 'auth_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String accessTokenKey = 'access_token';
  static const String fcmTokenKey = 'fcm_token';


}

class AppUtils {
  static bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
  
  static bool isValidPhone(String phone) {
    return RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(phone);
  }
  
  static String formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}
