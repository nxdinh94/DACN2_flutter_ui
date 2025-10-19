import 'package:flutter/material.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/widgets/app_svg.dart';

import '../../core/theme/app_theme.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final bool ? isDisabled;

  // Appearance
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  // Typography
  final double? fontSize;
  final FontWeight? fontWeight;

  // Icon
  final double? iconSize;
  final String? iconPath; // could be an asset path
  final Color? iconColor;

  // Button style type
  final _AppButtonType _type;

  const AppButton._({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor = AppTheme.primaryColor,
    this.textColor = AppTheme.onPrimaryColor,
    this.borderColor,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
    this.iconPath,
    this.iconColor,
    this.isDisabled = false,
    required _AppButtonType type,
  }) : _type = type;

  /// 🔹 Named constructors
  const AppButton.elevated({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor = AppTheme.primaryColor,
    this.textColor = AppTheme.onPrimaryColor,
    this.borderColor = AppTheme.borderColor,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
    this.iconPath,
    this.iconColor,
    this.isDisabled = false,
  }) : _type = _AppButtonType.elevated;

  const AppButton.outlined({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor = AppTheme.primaryColor,
    this.textColor = AppTheme.onPrimaryColor,
    this.borderColor = AppTheme.borderColor,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
    this.iconPath,
    this.iconColor,
    this.isDisabled = false,
  }) : _type = _AppButtonType.outlined;

  const AppButton.text({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor = AppTheme.primaryColor,
    this.textColor = AppTheme.onPrimaryColor,
    this.borderColor = AppTheme.borderColor,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
    this.iconPath,
    this.iconColor,
    this.isDisabled = false,
  }) : _type = _AppButtonType.text;

  @override
  Widget build(BuildContext context) {

    final Color effectiveBackgroundColor = isDisabled == true
        ? (backgroundColor!.withValues(alpha: 0.4))
        : (backgroundColor!);

    final Color effectiveTextColor = textColor ?? Colors.white;

    final TextStyle textStyle = TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w400,
      color: effectiveTextColor,
    );

    final Widget? iconWidget = iconPath != null
        ? Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: iconPath!.contains('svg') ? AppSvg(
        size: iconSize,
        color: iconColor ?? effectiveTextColor,
        iconPath: iconPath!,
      ) : Image.asset(
        iconPath!,
        width: iconSize ?? 24,
        height: iconSize ?? 24,
      ),
    )
        : null;

    final Widget child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        if (iconWidget != null) iconWidget,
        if (text != null) Text(text!, style: textStyle),
      ],
    );

    switch (_type) {
      case _AppButtonType.elevated:
        return ElevatedButton(
          onPressed: (isDisabled ?? false) ? null : onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return (backgroundColor ?? AppTheme.primaryColor).withOpacity(0.4);
              }
              return backgroundColor ?? AppTheme.primaryColor;
            }),
            foregroundColor: MaterialStateProperty.all(
              textColor ?? AppTheme.onPrimaryColor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
                side: BorderSide(color: borderColor ?? Colors.transparent),
              ),
            ),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
          ),
          child: child,
        );

      case _AppButtonType.outlined:
        return OutlinedButton(
          onPressed: (isDisabled ?? false) ? null : onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? Colors.transparent,
            ),
            foregroundColor: MaterialStateProperty.all(
              textColor ?? AppTheme.primaryColor,
            ),
            side: MaterialStateProperty.all(
              BorderSide(color: borderColor ?? AppTheme.primaryColor),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            ),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: child,
        );

      case _AppButtonType.text:
        return TextButton(
          onPressed: (isDisabled ?? false) ? null : onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? Colors.transparent,
            ),
            foregroundColor: MaterialStateProperty.all(
              textColor ?? AppTheme.primaryColor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            ),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: child,
        );
    }

  }
}

enum _AppButtonType { elevated, outlined, text }
