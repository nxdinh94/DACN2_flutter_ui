
import 'package:flutter/material.dart';
import 'package:kit/shared/constants/app_colors.dart';

import 'app_theme.dart';
TextTheme getAppTextTheme() {
  return const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppTheme.onSurfaceColor
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppTheme.onSurfaceColor
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppTheme.onSurfaceColor
    ),

    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppTheme.onSurfaceColor
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppTheme.onSurfaceColor
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppTheme.onSurfaceColor
    ),
  );
}