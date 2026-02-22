import 'package:flutter/material.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

// package:flutter/bottom_sheet.dart:30
const double _defaultScrollControlDisabledMaxHeightRatio = 9.0 / 16.0;

class BottomSheetPage<T> extends Page<T> {
  final Widget child;
  final double? maxHeightFraction;
  final bool isScrollControlled;

  const BottomSheetPage({
    required this.child,
    this.maxHeightFraction,
    this.isScrollControlled = false,
    super.key,
  });

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
    settings: this,
    isScrollControlled: isScrollControlled,
    useSafeArea: true,
    isDismissible: true,
    showDragHandle: false,
    scrollControlDisabledMaxHeightRatio:
        maxHeightFraction ?? _defaultScrollControlDisabledMaxHeightRatio,
    backgroundColor: context.colorScheme.background,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    clipBehavior: Clip.antiAlias,
    builder: (context) => child,
  );
}
