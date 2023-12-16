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

extension LatLngBoundsExtension on LatLngBounds {
  static fromLatLngList(List<LatLng> latLngList) {
    assert(latLngList.isNotEmpty);
    double? x0, x1, y0, y1;
    for (LatLng latLng in latLngList) {
      if (x0 == null) {
        x0 = x1 = latLng.latitude;
        y0 = y1 = latLng.longitude;
      } else {
        if (latLng.latitude > x1!) x1 = latLng.latitude;
        if (latLng.latitude < x0) x0 = latLng.latitude;
        if (latLng.longitude > y1!) y1 = latLng.longitude;
        if (latLng.longitude < y0!) y0 = latLng.longitude;
      }
    }
    return LatLngBounds(northeast: LatLng(x1!, y1!), southwest: LatLng(x0!, y0!));
  }
}
