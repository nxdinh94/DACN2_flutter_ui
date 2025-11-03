import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/widgets/app_svg.dart';

class TickSuccess extends StatelessWidget {
  const TickSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: context.appTheme.successColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: context.appTheme.surfaceColor,
          width: 2,
        ),
      ),
      child: AppSvg(iconPath: AppAssets.tickSvg, size: 16,
        color: context.appTheme.whiteColor,
      ),
    );
  }
}

