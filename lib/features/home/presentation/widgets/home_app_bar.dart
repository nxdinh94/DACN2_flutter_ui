import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';

/// Custom app bar for the home page
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    required this.title,
    this.onAnalyticsPressed,
    this.onAddPressed,
  });

  final String title;
  final VoidCallback? onAnalyticsPressed;
  final VoidCallback? onAddPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.locale;
    
    return AppBar(
      title: Text(title),
      actions: [
        if (onAnalyticsPressed != null)
          Semantics(
            label: l10n.analytics,
            hint: l10n.viewAnalytics,
            button: true,
            child: IconButton(
              onPressed: onAnalyticsPressed,
              icon: const Icon(Icons.analytics),
              color: Colors.blue,
              tooltip: l10n.analytics,
            ),
          ),
        if (onAddPressed != null)
          Semantics(
            label: l10n.addNew,
            hint: l10n.addNewHint,
            button: true,
            child: IconButton(
              onPressed: onAddPressed,
              icon: const Icon(Icons.add),
              tooltip: l10n.addNew,
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
