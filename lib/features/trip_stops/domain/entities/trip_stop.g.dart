// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripStop _$$_TripStopFromJson(Map<String, dynamic> json) => _$_TripStop(
      index: json['index'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      duration: json['duration'] as int,
      location: latLngFromGeoPoint(json['location'] as GeoPoint),
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TripStopToJson(_$_TripStop instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'location': geoPointFromLatLng(instance.location),
      'isDone': instance.isDone,
    };
