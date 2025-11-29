import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/shared/widgets/app_svg.dart';

import '../../core/theme/app_theme.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final bool isDisabled;

  // Appearance
  final Color backgroundColor;
  final Color  textColor;
  final Color borderColor;

  // Typography
  final double? fontSize;
  final FontWeight? fontWeight;

  // Icon
  final double? iconSize;
  final String? iconPath; // could be an asset path
  final Color? iconColor;
  final OutlinedBorder? shape;

  final EdgeInsetsGeometry padding;

  // Button style type
  final _AppButtonType _type;

  /// 🔹 Named constructors
  const AppButton.elevated({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor = AppTheme.primaryColor,
    this.textColor = AppTheme.onPrimaryColor,
    this.borderColor = Colors.transparent,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
    this.iconPath,
    this.iconColor,
    this.isDisabled = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
    this.shape,
  }) : _type = _AppButtonType.elevated;

  const AppButton.outlined({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor = AppTheme.primaryColor,
    this.textColor = AppTheme.onPrimaryColor,
    this.borderColor = Colors.transparent,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
    this.iconPath,
    this.iconColor,
    this.isDisabled = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
    this.shape,
  }) : _type = _AppButtonType.outlined;

  const AppButton.text({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor = AppTheme.primaryColor,
    this.textColor = AppTheme.onPrimaryColor,
    this.borderColor = Colors.transparent,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
    this.iconPath,
    this.iconColor,
    this.isDisabled = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
    this.shape,
  }) : _type = _AppButtonType.text;
  const AppButton.icon({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor = AppTheme.primaryColor,
    this.textColor = AppTheme.onPrimaryColor,
    this.borderColor = Colors.transparent,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
    this.iconPath,
    this.iconColor,
    this.isDisabled = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
    this.shape,
  }) : _type = _AppButtonType.icon;

  @override
  Widget build(BuildContext context) {  
    final TextStyle textStyle = TextStyle(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: textColor,
    );

    final Widget? iconWidget = iconPath != null
        ? iconPath!.contains('svg')
            ? AppSvg(
                size: iconSize,
                color: iconColor ?? textColor,
                iconPath: iconPath!,
              )
            : Image.asset(
                iconPath!,
                width: iconSize ?? 24,
                height: iconSize ?? 24,
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
      // ElevatedButton (unchanged)
      case _AppButtonType.elevated:
        return ElevatedButton(
          onPressed: isDisabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            disabledBackgroundColor: backgroundColor.withValues(alpha: 0.4),
            foregroundColor: textColor,
            disabledForegroundColor: textColor.withValues(alpha: 0.4),
            shape: shape ?? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
              side: BorderSide(color: isDisabled ? borderColor.withValues(alpha: 0.1) : borderColor,)
            ),
            side:BorderSide(color: isDisabled ? borderColor.withValues(alpha: 0.1) : borderColor,),
            minimumSize: Size.zero,
            padding: padding,
            elevation: 0,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: child,
        );

      // OutlinedButton (converted to .styleFrom)
      case _AppButtonType.outlined:
        return OutlinedButton(
          onPressed: isDisabled ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: context.appTheme.surfaceColor,
            side: BorderSide(color: isDisabled ? borderColor.withValues(alpha: 0.4) : borderColor, width: 1),
            shape: shape ?? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            textStyle: context.textStyle.bodyMedium,
            padding: padding,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: child,
        );

      case _AppButtonType.text:
        return TextButton(
          onPressed: isDisabled ? null : onPressed,
          style: TextButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: backgroundColor,
            shape: shape ?? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            side: BorderSide(color: isDisabled ? borderColor.withValues(alpha: 0.4) : borderColor, width: 1),
            padding: padding,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: child,
        );
      case _AppButtonType.icon:
        return IconButton(
          onPressed: isDisabled ? null : onPressed,
          icon: child,
          color: iconColor ?? textColor,
          disabledColor: textColor.withValues(alpha: 0.4),
          padding: padding,
          iconSize: iconSize ?? 24,
          style: IconButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
          ),
        );
    }
  }

}

enum _AppButtonType { elevated, outlined, text, icon }
