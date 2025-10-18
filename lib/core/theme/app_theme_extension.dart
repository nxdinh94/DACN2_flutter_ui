import 'package:flutter/material.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color ? primaryColor;
  final Color ? secondaryColor;
  final Color ? onPrimaryColor;
  final Color ? onSecondaryColor;
  final Color ? onSurfaceColor;
  final Color ? surfaceColor;
  final Color ? borderColor;
         

  const AppThemeExtension({
    this.primaryColor,
    this.secondaryColor,
    this.onPrimaryColor,
    this.onSecondaryColor,
    this.onSurfaceColor,
    this.surfaceColor,
    this.borderColor,
  });

  // Copy method (for updating values dynamically, e.g. dark mode)
  @override
  AppThemeExtension copyWith({
    Color? brandColor,
    Color? successColor,
  }) {
    return AppThemeExtension(
      primaryColor: primaryColor ?? primaryColor,
      secondaryColor: secondaryColor ?? secondaryColor,
      onPrimaryColor: onPrimaryColor ?? onPrimaryColor,
      onSecondaryColor: onSecondaryColor ?? onSecondaryColor,
      onSurfaceColor: onSurfaceColor ?? onSurfaceColor,
      surfaceColor: surfaceColor ?? surfaceColor,
      borderColor: borderColor ?? borderColor,
    );
  }

  // Lerp (linear interpolation) for animated theme transitions
  @override
  AppThemeExtension lerp(ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension) return this;
    return AppThemeExtension(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t),
      onPrimaryColor: Color.lerp(onPrimaryColor, other.onPrimaryColor, t),
      onSecondaryColor: Color.lerp(onSecondaryColor, other.onSecondaryColor, t),
      onSurfaceColor: Color.lerp(onSurfaceColor, other.onSurfaceColor, t),
      surfaceColor: Color.lerp(surfaceColor, other.surfaceColor, t),
      borderColor: Color.lerp(borderColor, other.borderColor, t),
    );
  }
}
