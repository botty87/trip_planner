// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      defaultDayTripStartTime: json['defaultDayTripStartTime'] == null
          ? const TimeOfDay(hour: 8, minute: 0)
          : timeOfDayFromMap(
              json['defaultDayTripStartTime'] as Map<String, dynamic>),
      showDirections: json['showDirections'] as bool? ?? true,
      useDifferentDirectionsColors:
          json['useDifferentDirectionsColors'] as bool? ?? true,
      travelMode: json['travelMode'] == null
          ? TravelMode.driving
          : travelModeFromInt(json['travelMode'] as int),
      backgroundContainer: json['backgroundContainer'] == null
          ? null
          : BackgroundContainer.fromJson(
              json['backgroundContainer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'defaultDayTripStartTime':
          timeOfDayToMap(instance.defaultDayTripStartTime),
      'showDirections': instance.showDirections,
      'useDifferentDirectionsColors': instance.useDifferentDirectionsColors,
      'travelMode': travelModeToInt(instance.travelMode),
      'backgroundContainer': instance.backgroundContainer?.toJson(),
    };
