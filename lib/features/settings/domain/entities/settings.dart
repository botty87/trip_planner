// ignore_for_file: invalid_annotation_target

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';
import 'backgrounds_container.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @JsonKey(fromJson: timeOfDayFromMap, toJson: timeOfDayToMap)
    @Default(TimeOfDay(hour: 8, minute: 0))
    TimeOfDay defaultDayTripStartTime,
    @Default(true) bool showDirections,
    @Default(true) bool useDifferentDirectionsColors,
    @JsonKey(fromJson: travelModeFromInt, toJson: travelModeToInt)
    @Default(TravelMode.driving)
    TravelMode travelMode,
    @Default(BackgroundsContainer()) BackgroundsContainer backgroundsContainer,
    @Default(AdaptiveThemeMode.system) AdaptiveThemeMode themeMode,
    @Default(true) bool showBackgroundsDialog,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}
