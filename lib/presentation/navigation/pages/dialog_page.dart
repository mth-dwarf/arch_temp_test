import 'package:flutter/material.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

class DialogPage extends Page<dynamic> {
  final Widget child;
  final bool dismissable;

  const DialogPage({required this.child, this.dismissable = true, super.key});

  @override
  Route<dynamic> createRoute(BuildContext context) {
    return DialogRoute(
      settings: this,
      useSafeArea: true,
      context: context,
      barrierDismissible: dismissable,
      builder: (context) {
        return PopScope(
          canPop: dismissable,
          child: Dialog(
            backgroundColor: context.colorScheme.background,
            clipBehavior: Clip.antiAlias,
            insetPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(32),
            ),
            child: child,
          ),
        );
      },
    );
  }
}
