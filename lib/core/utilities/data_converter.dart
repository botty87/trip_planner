import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
  switch (travelMode) {
    case 0:
      return TravelMode.driving;
    case 1:
      return TravelMode.walking;
    case 2:
      return TravelMode.bicycling;
    case 3:
      return TravelMode.transit;
    default:
      throw Exception('Unknown travel mode');
  }
}

int travelModeToInt(TravelMode travelMode) {
  switch (travelMode) {
    case TravelMode.driving:
      return 0;
    case TravelMode.walking:
      return 1;
    case TravelMode.bicycling:
      return 2;
    case TravelMode.transit:
      return 3;
  }
}
