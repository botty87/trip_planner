import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/utilities/extensions.dart';

class BackgroundWidgetContainer extends StatelessWidget {
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

    return Container(
      decoration: context.hasBackgroundImage
          ? BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
              borderRadius: BorderRadius.circular(8),
            )
          : null,
      padding: context.hasBackgroundImage ? padding : EdgeInsets.zero,
      child: child,
    );
  }
}
