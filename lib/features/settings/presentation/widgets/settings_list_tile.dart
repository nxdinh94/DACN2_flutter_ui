import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';

class SettingsListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  const SettingsListTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: context.appTheme.onSurfaceColor,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: context.textStyle.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (trailing != null) ...[
              const SizedBox(width: 8),
              trailing!,
            ] else ...[
              Icon(
                Icons.chevron_right,
                size: 20,
                color: context.appTheme.textSubtle,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
