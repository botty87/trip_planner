import 'dart:ui';

import 'package:flutter/material.dart';

class TransparentListDecorator extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  const TransparentListDecorator({super.key, required this.child, required this.animation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        final double animValue = Curves.easeInOut.transform(animation.value);
        final double elevation = lerpDouble(0, 6, animValue)!;
        final shadowAlpha = lerpDouble(0, 0.4, animValue)!;
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            elevation: elevation,
            color: Colors.transparent,
            shadowColor: Colors.grey.withOpacity(shadowAlpha),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
