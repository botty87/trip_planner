// ignore_for_file: invalid_annotation_target

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';
import 'background_remote_image.dart';
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
    @Default(BackgroundsContainer(
      darkBackground: BackgroundRemoteImage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/trip-planner-11ffe.appspot.com/o/backgrounds%2Fdark%2F1.webp?alt=media&token=40c68216-ebf8-48ff-aab9-b74dcc135d13',
        index: 1,
      ),
      lightBackground: BackgroundRemoteImage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/trip-planner-11ffe.appspot.com/o/backgrounds%2Flight%2F2.webp?alt=media&token=8d063856-b0e7-430b-b866-18f1df4eb7bb',
        index: 2,
      ),
    ))
    BackgroundsContainer backgroundsContainer,
    @Default(AdaptiveThemeMode.system) AdaptiveThemeMode themeMode,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}
