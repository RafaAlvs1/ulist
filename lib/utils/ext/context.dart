import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  static late BuildContext ctx;

  Future<void> show() => showDialog(
        context: this,
        barrierDismissible: false,
        builder: (c) {
          ctx = c;

          return PopScope(
            canPop: false,
            child: Material(
              color: Colors.transparent,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffeff1f5),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 36.0),
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    margin: const EdgeInsets.all(16.0),
                    child: const CircularProgressIndicator.adaptive(),
                  ),
                ),
              ),
            ),
          );
        },
      );

  void dismiss() {
    try {
      Navigator.pop(ctx);
    } catch (_) {}
  }
}
