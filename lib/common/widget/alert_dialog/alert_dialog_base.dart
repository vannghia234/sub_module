import 'package:flutter/material.dart';

import '../../../core/constant/app_text_style.dart';

class AlertDialogBase {
  static void showCommonAlertDialog(BuildContext context,
      {required String title,
      required String content,
      String? confirmText,
      String? cancelText,
      VoidCallback? onConfirm,
      VoidCallback? onCancel,
      VoidCallback? onCompleted}) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 200),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(scale: animation, child: child);
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: AlertDialog.adaptive(
            title: Text(title, style: AppTextStyle.title1()),
            content: Text(
              content,
              style: AppTextStyle.body2(),
            ),
            actions: [
              if (cancelText != null)
                TextButton(
                  onPressed: onCancel,
                  child: Text(
                    cancelText,
                    style: AppTextStyle.label1(),
                  ),
                ),
              if (confirmText != null)
                TextButton(
                  onPressed: onConfirm,
                  child: Text(confirmText, style: AppTextStyle.label1()),
                )
            ],
          ),
        );
      },
    ).whenComplete(() {
      if (onCompleted != null) {
        onCompleted();
      }
    });
  }
}
