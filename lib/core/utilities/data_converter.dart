import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Timestamp dateTimeToTimestamp(DateTime dateTime) => Timestamp.fromDate(dateTime);

DateTime dateTimeFromTimestamp(Timestamp timestamp) => timestamp.toDate();

LatLng latLngFromGeoPoint(GeoPoint geoPoint) => LatLng(geoPoint.latitude, geoPoint.longitude);

GeoPoint geoPointFromLatLng(LatLng latLng) => GeoPoint(latLng.latitude, latLng.longitude);

TimeOfDay timeOfDayFromMap(Map<String, dynamic> map) =>
    TimeOfDay(hour: map['hour'], minute: map['minute']);

Map<String, int> timeOfDayToMap(TimeOfDay timeOfDay) => {
      'hour': timeOfDay.hour,
      'minute': timeOfDay.minute,
    };
