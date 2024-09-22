// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewPreferencesImpl _$$ViewPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$ViewPreferencesImpl(
      tripsViewMode: json['tripsViewMode'] == null
          ? ViewMode.grid
          : viewModeFromInt((json['tripsViewMode'] as num).toInt()),
      tripViewMode: json['tripViewMode'] == null
          ? ViewMode.grid
          : viewModeFromInt((json['tripViewMode'] as num).toInt()),
      dayTripViewMode: json['dayTripViewMode'] == null
          ? ViewMode.grid
          : viewModeFromInt((json['dayTripViewMode'] as num).toInt()),
    );

Map<String, dynamic> _$$ViewPreferencesImplToJson(
        _$ViewPreferencesImpl instance) =>
    <String, dynamic>{
      'tripsViewMode': viewModeToInt(instance.tripsViewMode),
      'tripViewMode': viewModeToInt(instance.tripViewMode),
      'dayTripViewMode': viewModeToInt(instance.dayTripViewMode),
    };
