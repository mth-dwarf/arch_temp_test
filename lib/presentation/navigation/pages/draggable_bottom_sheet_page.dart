import 'package:flutter/material.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

class DraggableBottomSheetPage<T> extends Page<T> {
  final Widget Function(BuildContext context, ScrollController scrollController)
      builder;
  final bool showDragHandle;
  final bool useSafeArea;
  final double maxChildSize;
  final double minChildSize;
  final double initialChildSize;

  const DraggableBottomSheetPage({
    required this.builder,
    this.showDragHandle = false,
    this.useSafeArea = true,
    this.maxChildSize = 1,
    this.minChildSize = 0.5,
    this.initialChildSize = 0.6,
    super.key,
  });

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
      settings: this,
      isScrollControlled: false,
      showDragHandle: showDragHandle,
      useSafeArea: useSafeArea,
      isDismissible: true,
      backgroundColor: context.colorScheme.background,
      enableDrag: true,
      scrollControlDisabledMaxHeightRatio: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      clipBehavior: Clip.antiAlias,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: initialChildSize,
          minChildSize: minChildSize,
          maxChildSize: maxChildSize,
          shouldCloseOnMinExtent: true,
          expand: false,
          snap: true,
          snapSizes: [initialChildSize],
          builder: (BuildContext context, ScrollController scrollController) {
            return builder(context, scrollController);
          },
        );
      });
}
