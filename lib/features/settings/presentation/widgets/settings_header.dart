import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/shared/widgets/network_image.dart';

class SettingsHeader extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String username;
  final VoidCallback? onTap;

  const SettingsHeader({
    super.key,
    required this.avatarUrl,
    required this.name,
    required this.username,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            AppNetworkImage.avatar(
              imageUrl: avatarUrl,
              size: 60,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: context.textStyle.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    username,
                    style: context.textStyle.bodyMedium?.copyWith(
                      color: context.appTheme.textSubtle,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: context.appTheme.textSubtle,
            ),
          ],
        ),
      ),
    );
  }
}
