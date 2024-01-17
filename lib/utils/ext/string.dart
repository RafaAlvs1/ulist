import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:ulist_project/core/widgets.dart';

extension StringExtension on String {
  void toToastError(BuildContext context) {
    try {
      final message = isEmpty ? "error" : this;

      dismissAllToast(showAnim: true);

      showToastWidget(
        Toast(
          bgColor: Colors.red,
          icon: Icons.error,
          message: message,
          textColor: Colors.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (_) {}
  }

  void toToastSuccess(BuildContext context) {
    try {
      final message = isEmpty ? "success" : this;

      dismissAllToast(showAnim: true);

      showToastWidget(
        Toast(
          bgColor: Colors.green,
          icon: Icons.check_circle,
          message: message,
          textColor: Colors.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (_) {}
  }

  void toToastLoading(BuildContext context) {
    try {
      final message = isEmpty ? "loading" : this;

      dismissAllToast(showAnim: true);

      showToastWidget(
        Toast(
          bgColor: Colors.pink,
          icon: Icons.info,
          message: message,
          textColor: Colors.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (_) {}
  }
}
