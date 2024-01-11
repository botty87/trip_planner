import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultMapZoomButtons extends StatelessWidget {
  final VoidCallback onZoomInPressed;
  final VoidCallback onZoomOutPressed;

  const DefaultMapZoomButtons({
    super.key,
    required this.onZoomInPressed,
    required this.onZoomOutPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
            icon: const Icon(Icons.remove, color: Colors.white),
            onPressed: onZoomOutPressed,
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: onZoomInPressed,
          ),
        ],
      ),
    );
  }
}
