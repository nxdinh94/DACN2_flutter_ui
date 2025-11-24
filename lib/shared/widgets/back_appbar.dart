import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/widgets/app_button.dart';
class BackAppbar extends StatelessWidget {
  const BackAppbar({super.key, this.backgroundColor, this.iconColor});
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60 ,
      child: Row(
        children: [
          AppButton.icon(
            onPressed: () {
              context.pop();
            },
            iconPath: AppAssets.backSvg,
            iconColor: iconColor ?? context.appTheme.onSurfaceColor,
            iconSize: 24,
            backgroundColor: backgroundColor ?? Colors.transparent,
          )
        ],  
      ),
    );
  }
}