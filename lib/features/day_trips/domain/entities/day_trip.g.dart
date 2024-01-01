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
      tripStopsDirections: (json['tripStopsDirections'] as List<dynamic>?)
          ?.map((e) => TripStopsDirections.fromJson(e as Map<String, dynamic>))
          .toList(),
      tripStopsDirectionsUpToDate:
          json['tripStopsDirectionsUpToDate'] as bool? ?? false,
      travelMode: json['travelMode'] == null
          ? TravelMode.driving
          : travelModeFromInt(json['travelMode'] as int),
    );

Map<String, dynamic> _$$DayTripImplToJson(_$DayTripImpl instance) {
  final val = <String, dynamic>{
    'index': instance.index,
    'description': instance.description,
    'startTime': timeOfDayToMap(instance.startTime),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tripStopsDirections', instance.tripStopsDirections);
  val['tripStopsDirectionsUpToDate'] = instance.tripStopsDirectionsUpToDate;
  val['travelMode'] = travelModeToInt(instance.travelMode);
  return val;
}
