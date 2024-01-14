import 'package:flutter/material.dart';

class DefaultMapMarkerFinder extends StatelessWidget {
  final VoidCallback onTap;

  const DefaultMapMarkerFinder({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton.filled(
        icon: const Icon(Icons.place, color: Colors.white),
        onPressed: onTap,
      ),
    );
  }
}
