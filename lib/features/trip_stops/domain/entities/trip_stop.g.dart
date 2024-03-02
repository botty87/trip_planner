// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripStopImpl _$$TripStopImplFromJson(Map<String, dynamic> json) => _$TripStopImpl(
      index: json['index'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      duration: json['duration'] as int,
      location: latLngFromGeoPoint(json['location'] as GeoPoint),
      isDone: json['isDone'] as bool? ?? false,
      travelTimeToNextStop: json['travelTimeToNextStop'] as int? ?? 0,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$TripStopImplToJson(_$TripStopImpl instance) => <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'location': geoPointFromLatLng(instance.location),
      'isDone': instance.isDone,
      'travelTimeToNextStop': instance.travelTimeToNextStop,
      'note': instance.note,
    };
