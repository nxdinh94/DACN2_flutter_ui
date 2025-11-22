import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kit/shared/constants/enum/file_type.dart';
import 'package:video_player/video_player.dart';

class AppConstants {
  static const String appName = 'Keep In Touch';
  static const String baseUrl = 'http://192.168.1.12:4000/';
  
  // API endpoints
  static const String loginEndpoint = 'api/auth/login';
  static const String registerEndpoint = 'api/auth/register';
  static const String logoutEndpoint = 'api/auth/logout';
  static const String refreshTokenEndpoint = 'api/auth/refresh-token';
  static const String sendOtpEndpoint = 'api/auth/otp';
  static const String userProfileEndpoint = 'api/user/me';
  static const String uploadImage = '/api/media/image/upload';
  static const String uploadVideo = '/api/media/video/upload';

  // Hive key
  static const String hiveDataBase = 'Linggo';
  static const String hiveUserInfoBox = 'user_info';
  static const String hiveSettingsBox = 'settings';
  static const String hiveThemeModeBox = 'theme_mode';

  
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

  static FileType getFileType(File file) {
    final extension = file.path.toLowerCase();
    if (extension.endsWith('.jpg') ||
        extension.endsWith('.jpeg') ||
        extension.endsWith('.png') ||
        extension.endsWith('.gif') ||
        extension.endsWith('.webp')) {
      return FileType.image;
    } else if (extension.endsWith('.mp4') ||
        extension.endsWith('.mov') ||
        extension.endsWith('.mkv') ||
        extension.endsWith('.avi')) {
      return FileType.video;
    } else {
      return FileType.other;
    }
  }

  static Future<Size> getMediaSize(File file) async {
    final fileType = getFileType(file);
    // Ảnh
    if (fileType == FileType.image) {
      final completer = Completer<Size>();
      final img = Image.file(file);
      img.image.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener((info, _) {
          completer.complete(
            Size(
              info.image.width.toDouble(),
              info.image.height.toDouble(),
            ),
          );
        }),
      );
      return completer.future;
    }

    // Video
    else if (fileType == FileType.video) {
      final controller = VideoPlayerController.file(file);
      await controller.initialize();
      final size = Size(
        controller.value.size.width,
        controller.value.size.height,
      );
      await controller.dispose();
      return size;
    }
    else {
      throw UnsupportedError('Unsupported file type: ${file.path}');
    }
  }

}

