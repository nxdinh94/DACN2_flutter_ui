import 'package:flutter/material.dart';
import 'package:kit/core/theme/app_theme_extension.dart';
import 'package:kit/shared/l10n/app_localizations.dart';

extension LocalizationContextExtensions on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
  ThemeData get theme => Theme.of(this);
  AppThemeExtension get appTheme => Theme.of(this).extension<AppThemeExtension>()!;
  TextTheme get textStyle => Theme.of(this).textTheme;
  bool get isLightMode => Theme.of(this).brightness == Brightness.light;
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}