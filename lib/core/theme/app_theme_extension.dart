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
  final Color textSubtle;
  final Color successColor;
         

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
    required this.textSubtle,
    required this.successColor,
  });

  // Copy method (for updating values dynamically, e.g. dark mode)
  @override
  AppThemeExtension copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? onPrimaryColor,
    Color? onSecondaryColor,
    Color? onSurfaceColor,
    Color? surfaceColor,
    Color? borderColor,
    Color? blackColor,
    Color? whiteColor,
    Color? tertiaryColor,
    Color? errorColor,
    Color? textSubtle,
    Color? successColor,
  }) {
    return AppThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      onPrimaryColor: onPrimaryColor ?? this.onPrimaryColor,
      onSecondaryColor: onSecondaryColor ?? this.onSecondaryColor,
      onSurfaceColor: onSurfaceColor ?? this.onSurfaceColor,
      surfaceColor: surfaceColor ?? this.surfaceColor,
      borderColor: borderColor ?? this.borderColor,
      blackColor: blackColor ?? this.blackColor,
      whiteColor: whiteColor ?? this.whiteColor,
      tertiaryColor: tertiaryColor ?? this.tertiaryColor,
      errorColor: errorColor ?? this.errorColor,
      textSubtle: textSubtle ?? this.textSubtle,
      successColor: successColor ?? this.successColor,
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
      textSubtle: Color.lerp(textSubtle, other.textSubtle, t) ?? textSubtle,
      successColor: Color.lerp(successColor, other.successColor, t) ?? successColor,
    );
  }
}
