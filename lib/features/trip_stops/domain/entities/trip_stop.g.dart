// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripStopImpl _$$TripStopImplFromJson(Map<String, dynamic> json) =>
    _$TripStopImpl(
      index: (json['index'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      duration: (json['duration'] as num).toInt(),
      location: latLngFromGeoPoint(json['location'] as GeoPoint),
      isDone: json['isDone'] as bool? ?? false,
      travelTimeToNextStop:
          (json['travelTimeToNextStop'] as num?)?.toInt() ?? 0,
      note: json['note'] as String?,
      placeholder: json['placeholder'] == null
          ? null
          : TripStopPlaceholder.fromJson(
              json['placeholder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TripStopImplToJson(_$TripStopImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'location': geoPointFromLatLng(instance.location),
      'isDone': instance.isDone,
      'travelTimeToNextStop': instance.travelTimeToNextStop,
      'note': instance.note,
      'placeholder': instance.placeholder?.toJson(),
    };

_$TripStopPlaceholderImpl _$$TripStopPlaceholderImplFromJson(
        Map<String, dynamic> json) =>
    _$TripStopPlaceholderImpl(
      name: json['name'] as String,
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$$TripStopPlaceholderImplToJson(
        _$TripStopPlaceholderImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'duration': instance.duration,
    };
