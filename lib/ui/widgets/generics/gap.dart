import 'package:flutter/material.dart';

///Add a gap between widgets, accroding to the current orientation
class Gap extends StatelessWidget {
  const Gap(this.gap, {super.key}) : assert(gap >= 0, 'Gap must be positive');

  const Gap.empty({super.key}) : gap = 0;

  final double gap;

  @override
  Widget build(BuildContext context) {
    if (gap == 0) return const SizedBox.shrink();

    final orientation = MediaQuery.of(context).orientation;

    return switch (orientation) {
      Orientation.portrait => SizedBox(height: gap),
      Orientation.landscape => SizedBox(width: gap),
    };
  }
}
