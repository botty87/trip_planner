import 'dart:async';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_launcher/map_launcher.dart';

import '../constants.dart';
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

extension FirebaseStorageExtension on FirebaseStorage {
  Reference get backgroundsRef => ref('backgrounds');
  Reference get lightBackgroundsRef => backgroundsRef.child('light');
  Reference get darkBackgroundsRef => backgroundsRef.child('dark');
}

extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool get isDarkMode {
    switch (AdaptiveTheme.of(this).mode) {
      case AdaptiveThemeMode.light:
        return false;
      case AdaptiveThemeMode.dark:
        return true;
      case AdaptiveThemeMode.system:
        final brightness = MediaQuery.of(this).platformBrightness;
        return brightness == Brightness.dark;
    }
  }

  setThemeMode(AdaptiveThemeMode mode) {
    switch (mode) {
      case AdaptiveThemeMode.light:
        AdaptiveTheme.of(this).setLight();
        break;
      case AdaptiveThemeMode.dark:
        AdaptiveTheme.of(this).setDark();
        break;
      case AdaptiveThemeMode.system:
        AdaptiveTheme.of(this).setSystem();
        break;
    }
  }

  Color get appBarColor => isDarkMode ? appBarDarkColor : appBarLightColor;
}

//Generic nullable let extension function
extension NullableLet<T> on T? {
  R? let<R>(R Function(T) block) => this == null ? null : block(this as T);
}
