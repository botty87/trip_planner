import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import 'background_image_wrapper.dart';

class BackgroundWidgetContainer extends StatelessWidget with BackgroundImageMixin {
  final Widget child;
  const BackgroundWidgetContainer({super.key, required this.child});

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
      padding: hasBackgroundImage
          ? const EdgeInsets.symmetric(
              horizontal: horizontalSpaceL,
              vertical: verticalSpaceL,
            )
          : const EdgeInsets.all(0),
      child: child,
    );
  }
}