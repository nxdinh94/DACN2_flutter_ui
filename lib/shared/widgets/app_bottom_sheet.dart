import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void showAppBottomSheet({
  required BuildContext context,
  required Widget child,
  double initialExpand = 0.6,
  double? maxExpand,
  bool isExpand = true,
}) {
  showMaterialModalBottomSheet(
    context: context,
    expand: true,
    isDismissible: true,
    useRootNavigator: true,
    barrierColor: context.appTheme.blackColor.withValues(alpha: .3),
    backgroundColor: Colors.transparent,
    builder: (sheetContext) => GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (Navigator.of(sheetContext).canPop()) {
          Navigator.of(sheetContext).pop();
        }
      },
      child: GestureDetector(
        onTap: () {}, 
        child: DraggableScrollableSheet(
          initialChildSize: initialExpand,
          minChildSize: 0.0,
          maxChildSize: isExpand ? (maxExpand ?? 0.9) : initialExpand,
          expand: false,
          snap: true,
          snapSizes: isExpand ? null : [initialExpand],
          builder: (context, scrollController) {
            return NotificationListener<DraggableScrollableNotification>(
              onNotification: (notification) {
                // Close bottom sheet when dragged below threshold
                if (notification.extent < 0.15) {
                  if (Navigator.of(sheetContext).canPop()) {
                    Navigator.of(sheetContext).pop();
                  }
                }
                return true;
              },
              child: Container(
                decoration: BoxDecoration(
                  color: context.appTheme.surfaceColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 40,
                          height: 5,
                          margin: const EdgeInsets.only(bottom: 12, top: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey.withValues(alpha: .3),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                      child,
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}
