// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripStop _$$_TripStopFromJson(Map<String, dynamic> json) => _$_TripStop(
      name: json['name'] as String,
      description: json['description'] as String?,
      startTime: timeOfDayFromMap(json['startTime'] as Map<String, dynamic>),
      endTime: timeOfDayFromMap(json['endTime'] as Map<String, dynamic>),
      location: latLngFromGeoPoint(json['location'] as GeoPoint),
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TripStopToJson(_$_TripStop instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'startTime': timeOfDayToMap(instance.startTime),
      'endTime': timeOfDayToMap(instance.endTime),
      'location': geoPointFromLatLng(instance.location),
      'isDone': instance.isDone,
    };
