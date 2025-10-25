import 'dart:ui';

import 'package:fluttertoast/fluttertoast.dart';

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP_RIGHT,
    timeInSecForIosWeb: 1,
    backgroundColor: const Color(0xFF323232),
    textColor: const Color(0xFFFFFFFF),
    fontSize: 16.0,
    
  );
}