
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kit/core/extensions/context.dart';
class AppSvg extends StatelessWidget {
  const AppSvg({super.key, required this.iconPath, this.size = 24, this.color});
  final String iconPath;
  final double ?  size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
        color ?? context.appTheme.primaryColor,
        BlendMode.srcIn,
      ),
    );
  }
}
