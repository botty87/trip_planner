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
          : travelModeFromInt((json['travelMode'] as num).toInt()),
      backgroundsContainer: json['backgroundsContainer'] == null
          ? const BackgroundsContainer()
          : BackgroundsContainer.fromJson(
              json['backgroundsContainer'] as Map<String, dynamic>),
      themeMode:
          $enumDecodeNullable(_$AdaptiveThemeModeEnumMap, json['themeMode']) ??
              AdaptiveThemeMode.system,
      showBackgroundsDialog: json['showBackgroundsDialog'] as bool? ?? true,
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
      'showBackgroundsDialog': instance.showBackgroundsDialog,
    };

const _$AdaptiveThemeModeEnumMap = {
  AdaptiveThemeMode.light: 'light',
  AdaptiveThemeMode.dark: 'dark',
  AdaptiveThemeMode.system: 'system',
};
