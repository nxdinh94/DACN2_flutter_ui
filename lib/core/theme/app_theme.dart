import 'package:flutter/material.dart';
import 'package:kit/core/theme/app_theme_extension.dart';
import 'package:kit/core/theme/text_theme.dart';

class AppTheme {
  static const Color primaryColor = Colors.black87;
  static const Color onPrimaryColor = Colors.white;
  static const Color onSecondaryColor = Colors.white;
  static const Color secondaryColor = Color(0xFF262626);
  static const Color surfaceColor = Colors.white;
  static const Color onSurfaceColor = Colors.black87;
  static const Color borderColor = Color(0xFFC4C6C9);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;


  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Nunito',
      textTheme: getAppTextTheme(),
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
        surface: surfaceColor,
        onSurface: onSurfaceColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: onSurfaceColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(color: onSurfaceColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: onPrimaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
      ),
      cardTheme: const CardThemeData(
        color: Colors.white,
        elevation: 2,
        shadowColor: Color(0x0D000000), // Colors.black.withOpacity(0.05)
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.withValues(alpha: .3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.withValues(alpha: .3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      extensions: const <ThemeExtension<dynamic>>[
        AppThemeExtension(
          primaryColor: primaryColor,
          secondaryColor: secondaryColor,
          onPrimaryColor: onPrimaryColor,
          onSecondaryColor: onSecondaryColor,
          onSurfaceColor: onSurfaceColor,
          borderColor: borderColor,
          surfaceColor: surfaceColor,
          blackColor: blackColor,
          whiteColor: whiteColor,
        ),
      ],

    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.dark,
      ),
      extensions: const <ThemeExtension<dynamic>>[
        AppThemeExtension(
          primaryColor: primaryColor,
          secondaryColor: secondaryColor,
          onPrimaryColor: onPrimaryColor,
          onSecondaryColor: onSecondaryColor,
          onSurfaceColor: onSurfaceColor,
          borderColor: borderColor,
          surfaceColor: surfaceColor,
          blackColor: blackColor,
          whiteColor: whiteColor,
        ),
      ],
    );
  }
}
