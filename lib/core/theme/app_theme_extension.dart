import 'package:flutter/material.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color primaryColor;
  final Color secondaryColor;
  final Color onPrimaryColor;
  final Color onSecondaryColor;
  final Color onSurfaceColor;
  final Color surfaceColor;
  final Color borderColor;
  final Color blackColor;
  final Color whiteColor;
  final Color tertiaryColor;
  final Color errorColor;
         

  const AppThemeExtension({
    required this.primaryColor,
    required this.secondaryColor,
    required this.onPrimaryColor,
    required this.onSecondaryColor,
    required this.onSurfaceColor,
    required this.surfaceColor,
    required this.borderColor,
    required this.blackColor,
    required this.whiteColor,
    required this.tertiaryColor,
    required this.errorColor,
  });

  // Copy method (for updating values dynamically, e.g. dark mode)
  @override
  AppThemeExtension copyWith({
    Color? brandColor,
    Color? successColor,
  }) {
    return AppThemeExtension(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      onPrimaryColor: onPrimaryColor,
      onSecondaryColor: onSecondaryColor,
      onSurfaceColor: onSurfaceColor,
      surfaceColor: surfaceColor,
      borderColor: borderColor,
      blackColor: blackColor,
      whiteColor: whiteColor,
      tertiaryColor: tertiaryColor,
      errorColor: errorColor,
    );
  }

  // Lerp (linear interpolation) for animated theme transitions
  @override
  AppThemeExtension lerp(ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension) return this;
    return AppThemeExtension(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t) ?? primaryColor,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t) ?? secondaryColor,
      onPrimaryColor: Color.lerp(onPrimaryColor, other.onPrimaryColor, t) ?? onPrimaryColor,
      onSecondaryColor: Color.lerp(onSecondaryColor, other.onSecondaryColor, t) ?? onSecondaryColor,
      onSurfaceColor: Color.lerp(onSurfaceColor, other.onSurfaceColor, t) ?? onSurfaceColor,
      surfaceColor: Color.lerp(surfaceColor, other.surfaceColor, t) ?? surfaceColor,
      borderColor: Color.lerp(borderColor, other.borderColor, t) ?? borderColor,
      blackColor: Color.lerp(blackColor, other.blackColor, t) ?? blackColor,
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t) ?? whiteColor,
      tertiaryColor: Color.lerp(tertiaryColor, other.tertiaryColor, t) ?? tertiaryColor,
      errorColor: Color.lerp(errorColor, other.errorColor, t) ?? errorColor,
    );
  }
}
