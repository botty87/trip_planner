// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayTripImpl _$$DayTripImplFromJson(Map<String, dynamic> json) =>
    _$DayTripImpl(
      index: json['index'] as int,
      description: json['description'] as String?,
      startTime: json['startTime'] == null
          ? const TimeOfDay(hour: 8, minute: 0)
          : timeOfDayFromMap(json['startTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DayTripImplToJson(_$DayTripImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'description': instance.description,
      'startTime': timeOfDayToMap(instance.startTime),
    };
