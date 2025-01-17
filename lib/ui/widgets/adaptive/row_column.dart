import 'package:flutter/material.dart';

///A widget that can be used to create a row or a column, dinamically according to the current orientation
class RowColumn extends StatelessWidget {
  const RowColumn({super.key, required this.children, this.spacing = 0});

  final List<Widget> children;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return switch (orientation) {
      Orientation.landscape => Row(spacing: spacing, children: children),
      Orientation.portrait => Column(spacing: spacing, children: children),
    };
  }
}
