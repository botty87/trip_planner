import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import 'background_image_wrapper.dart';

class BackgroundWidgetContainer extends StatelessWidget with BackgroundImageMixin {
  final Widget child;
  final EdgeInsets padding;

  const BackgroundWidgetContainer(
      {super.key,
      required this.child,
      this.padding = const EdgeInsets.symmetric(
        horizontal: horizontalSpaceL,
        vertical: verticalSpaceL,
      )});

  @override
  Widget build(BuildContext context) {
    final hasBackgroundImage = this.hasBackgroundImage(context);

    return Container(
      decoration: hasBackgroundImage
          ? BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
              borderRadius: BorderRadius.circular(8),
            )
          : null,
      padding: hasBackgroundImage ? padding : const EdgeInsets.all(0),
      child: child,
    );
  }
}
