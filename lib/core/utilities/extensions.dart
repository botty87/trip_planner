import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_launcher/map_launcher.dart';

extension TimeOfDayExtension on TimeOfDay {
  String toFormattedString() {
    final hour = this.hour.toString().padLeft(2, '0');
    final minute = this.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  Map<String, dynamic> toJson() => {
        'hour': hour,
        'minute': minute,
      };
}

extension LatLngExtension on LatLng {
  Coords toCoords() => Coords(latitude, longitude);
}

extension StringExtension on String {
  String? nullIfEmpty() => isEmpty ? null : this;
}
