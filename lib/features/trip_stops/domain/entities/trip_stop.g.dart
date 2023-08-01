// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripStop _$$_TripStopFromJson(Map<String, dynamic> json) => _$_TripStop(
      name: json['name'] as String,
      description: json['description'] as String?,
      beginHourDate: dateTimeFromTimestamp(json['beginHourDate'] as Timestamp),
      durationInMinutes: json['durationInMinutes'] as int,
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TripStopToJson(_$_TripStop instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'beginHourDate': dateTimeToTimestamp(instance.beginHourDate),
      'durationInMinutes': instance.durationInMinutes,
      'isDone': instance.isDone,
    };
