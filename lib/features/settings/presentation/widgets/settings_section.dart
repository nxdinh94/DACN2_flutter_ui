import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SettingsSection({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            title,
            style: context.textStyle.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: context.appTheme.surfaceColor,
            border: Border(
              top: BorderSide(
                color: context.appTheme.borderColor,
                width: 0.5,
              ),
              bottom: BorderSide(
                color: context.appTheme.borderColor,
                width: 0.5,
              ),
            ),
          ),
          child: Column(
            children: [
              for (int i = 0; i < children.length; i++) ...[
                children[i],
                if (i < children.length - 1)
                  Divider(
                    height: 0.5,
                    thickness: 0.5,
                    color: context.appTheme.borderColor,
                    indent: 56,
                  ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
