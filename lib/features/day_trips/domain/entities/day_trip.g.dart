// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayTrip _$$_DayTripFromJson(Map<String, dynamic> json) => _$_DayTrip(
      index: json['index'] as int,
      description: json['description'] as String?,
      startTime: json['startTime'] == null
          ? const TimeOfDay(hour: 8, minute: 0)
          : timeOfDayFromMap(json['startTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DayTripToJson(_$_DayTrip instance) =>
    <String, dynamic>{
      'index': instance.index,
      'description': instance.description,
      'startTime': timeOfDayToMap(instance.startTime),
    };
