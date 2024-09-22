import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../features/settings/domain/entities/view_preferences.dart';

Timestamp dateTimeToTimestamp(DateTime dateTime) => Timestamp.fromDate(dateTime);

DateTime dateTimeFromTimestamp(Timestamp timestamp) => timestamp.toDate();

LatLng latLngFromGeoPoint(GeoPoint geoPoint) => LatLng(geoPoint.latitude, geoPoint.longitude);

GeoPoint geoPointFromLatLng(LatLng latLng) => GeoPoint(latLng.latitude, latLng.longitude);

List<LatLng>? geoPointsToLatLngs(List<dynamic>? geoPoints) =>
    geoPoints?.map((geoPoint) => latLngFromGeoPoint(geoPoint)).toList();

List<GeoPoint>? latLngsToGeoPoints(List<LatLng>? latLngs) =>
    latLngs?.map((latLng) => GeoPoint(latLng.latitude, latLng.longitude)).toList();

TimeOfDay timeOfDayFromMap(Map<String, dynamic> map) =>
    TimeOfDay(hour: map['hour'], minute: map['minute']);

Map<String, int> timeOfDayToMap(TimeOfDay timeOfDay) => {
      'hour': timeOfDay.hour,
      'minute': timeOfDay.minute,
    };

TravelMode travelModeFromInt(int travelMode) {
  return switch (travelMode) {
    0 => TravelMode.driving,
    1 => TravelMode.walking,
    2 => TravelMode.bicycling,
    3 => TravelMode.transit,
    _ => throw Exception('Unknown travel mode')
  };
}

int travelModeToInt(TravelMode travelMode) {
  return switch (travelMode) {
    TravelMode.driving => 0,
    TravelMode.walking => 1,
    TravelMode.bicycling => 2,
    TravelMode.transit => 3
  };
}

ViewMode viewModeFromInt(int viewMode) {
  return switch (viewMode) {
    0 => ViewMode.list,
    1 => ViewMode.grid,
    _ => throw Exception('Unknown view mode')
  };
}

int viewModeToInt(ViewMode viewMode) {
  return switch (viewMode) {
    ViewMode.list => 0,
    ViewMode.grid => 1
  };
}