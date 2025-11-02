import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void showAppBottomSheet({
  required BuildContext context,
  required Widget child,
  double initialExpand = 0.6,

}) {
  showMaterialModalBottomSheet(
    context: context,
    expand: true,
    isDismissible: true,      
    barrierColor: Colors.black.withValues(alpha: .3),
    backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
    builder: (context) => GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(), 
      child: GestureDetector(
        onTap: () {}, 
        child: DraggableScrollableSheet(
          initialChildSize: initialExpand,
          minChildSize: initialExpand,
          maxChildSize: 1.0,
          expand: false,
          builder: (context, scrollController) {
            return Container(
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
            );
          },
        ),
      ),
    ),
  );
}
