import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/constant_export.dart';

class ModalBottomSheetBase {
  /// height: 0.0 -> 1.0
  static void base(BuildContext context,
      {Widget? widget, String? title, double? height}) {
    ///height: 0.0 -> 1.0
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      // showDragHandle: true,
      enableDrag: true,
      isDismissible: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: (height != null)
                ? MediaQuery.of(context).size.height * height
                : null,
            decoration: BoxDecoration(
              color: Colors.white, // Màu nền của BottomSheet
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 4,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (title != null)
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 20),
                          const Spacer(),
                          Text(
                            title,
                            style: AppTextStyle.label1(),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.close,
                            color: Colors.grey[400],
                            size: 20,
                          ),
                        ],
                      ),
                    ),

                  const SizedBox(height: 20),
                  // Nội dung của bottom sheet,
                  if (widget != null) Flexible(child: widget),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
