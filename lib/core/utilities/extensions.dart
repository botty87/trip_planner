import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_launcher/map_launcher.dart';

import 'data_converter.dart';

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

extension LatLngBoundsExtension on List<LatLng> {
  getLatLngBounds() {
    assert(isNotEmpty);
    double? x0, x1, y0, y1;
    for (LatLng latLng in this) {
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

extension PointLatLngExtension on PointLatLng {
  LatLng toLatLng() => LatLng(latitude, longitude);
}

extension TravelModeExtension on TravelMode {
  int toJson() => travelModeToInt(this);
}

extension Let<T> on T {
  FutureOr<R> let<R>(R Function(T) block) => block(this);
}
