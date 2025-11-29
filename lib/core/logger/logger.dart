import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppLogger {
  static const String _prefix = '[Linggo]';

  void debug(String message) {
    if (kDebugMode) {
      debugPrint('$_prefix DEBUG: $message');
    }
  }

  void info(String message) {
    log('$_prefix INFO: $message');
  }

  void warning(String message) {
    if (kDebugMode) {
      debugPrint('$_prefix WARNING: $message');
    }
  }

  void error(String message, {Object? error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      debugPrint('$_prefix ERROR: $message');
      if (error != null) {
        debugPrint('Error: $error');
      }
      if (stackTrace != null) {
        debugPrint('StackTrace: $stackTrace');
      }
    }
  }
}
