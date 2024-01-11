import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DefaultMapTypeChanger extends StatelessWidget {
  final Stream<MapType> mapTypeStream;
  final MapType initialMapType;
  final VoidCallback onTap;

  const DefaultMapTypeChanger({
    super.key,
    required this.mapTypeStream,
    required this.initialMapType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MapType>(
        stream: mapTypeStream.distinct(),
        initialData: initialMapType,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton.filled(
              icon: Icon(
                snapshot.data! != MapType.hybrid ? Icons.map : Icons.map_outlined,
                color: Colors.white,
              ),
              onPressed: onTap,
            ),
          );
        });
  }
}
