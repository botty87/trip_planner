import 'package:flutter/material.dart';

class DefaultMapMarkersFinder extends StatelessWidget {
  final Stream<bool> isMarkerLatLngBoundsEmpty;
  final bool initialIsMarkerLatLngBoundsEmpty;
  final VoidCallback onTap;
  
  const DefaultMapMarkersFinder({
    super.key,
    required this.isMarkerLatLngBoundsEmpty,
    required this.initialIsMarkerLatLngBoundsEmpty,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: isMarkerLatLngBoundsEmpty.distinct(),
      initialData: initialIsMarkerLatLngBoundsEmpty,
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data!) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: IconButton.filled(
            icon: const Icon(Icons.place, color: Colors.white),
            onPressed: onTap,
          ),
        );
      },
    );
  }
}
