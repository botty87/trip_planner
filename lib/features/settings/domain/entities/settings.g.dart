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
      backgroundsContainer: json['backgroundsContainer'] == null
          ? const BackgroundsContainer(
              darkBackground: BackgroundRemoteImage(
                  url:
                      'https://firebasestorage.googleapis.com/v0/b/trip-planner-11ffe.appspot.com/o/backgrounds%2Fdark%2F1.webp?alt=media&token=40c68216-ebf8-48ff-aab9-b74dcc135d13',
                  index: 1),
              lightBackground: BackgroundRemoteImage(
                  url:
                      'https://firebasestorage.googleapis.com/v0/b/trip-planner-11ffe.appspot.com/o/backgrounds%2Flight%2F2.webp?alt=media&token=8d063856-b0e7-430b-b866-18f1df4eb7bb',
                  index: 2))
          : BackgroundsContainer.fromJson(
              json['backgroundsContainer'] as Map<String, dynamic>),
      themeMode:
          $enumDecodeNullable(_$AdaptiveThemeModeEnumMap, json['themeMode']) ??
              AdaptiveThemeMode.system,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'defaultDayTripStartTime':
          timeOfDayToMap(instance.defaultDayTripStartTime),
      'showDirections': instance.showDirections,
      'useDifferentDirectionsColors': instance.useDifferentDirectionsColors,
      'travelMode': travelModeToInt(instance.travelMode),
      'backgroundsContainer': instance.backgroundsContainer.toJson(),
      'themeMode': _$AdaptiveThemeModeEnumMap[instance.themeMode]!,
    };

const _$AdaptiveThemeModeEnumMap = {
  AdaptiveThemeMode.light: 'light',
  AdaptiveThemeMode.dark: 'dark',
  AdaptiveThemeMode.system: 'system',
};
