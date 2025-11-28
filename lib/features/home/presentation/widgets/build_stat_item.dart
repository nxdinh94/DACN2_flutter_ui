import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/widgets/app_svg.dart';

Widget buildStatItem({required BuildContext context, required String iconPath, String ? count}) {
    return Row(
      spacing: 4,
      mainAxisSize: MainAxisSize.min,
      children: [
        AppSvg(iconPath: iconPath, size: 16, color: context.appTheme.textSubtle),
        if (count != null) ...[
          Text(
            count,
            style: context.textStyle.bodySmall?.copyWith(
              color: context.appTheme.textSubtle,
            ),
          ),
        ],
      ],
    );
  }

  Widget buildStat(BuildContext context, {String ? commentCount, String ? repostCount, String ? likeCount}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildStatItem(context: context, iconPath: AppAssets.commentSvg, count: commentCount),
        buildStatItem(context: context, iconPath: AppAssets.repostSvg, count: repostCount),
        buildStatItem(context: context, iconPath: AppAssets.heartOutlinedSvg, count: likeCount),
        buildStatItem(context: context, iconPath: AppAssets.bookmarkOutlinedSvg),
        buildStatItem(context: context, iconPath: AppAssets.shareSvg),
      ],
    );
  }