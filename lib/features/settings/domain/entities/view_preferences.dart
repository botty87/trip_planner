// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';

part 'view_preferences.freezed.dart';
part 'view_preferences.g.dart';

@freezed
class ViewPreferences with _$ViewPreferences {
  const factory ViewPreferences({
    @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
    @Default(ViewMode.grid) ViewMode tripsViewMode,
    @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
    @Default(ViewMode.grid) ViewMode tripViewMode,
    @JsonKey(fromJson: viewModeFromInt, toJson: viewModeToInt)
    @Default(ViewMode.grid) ViewMode dayTripViewMode,
  }) = _ViewPreferences;

  factory ViewPreferences.fromJson(Map<String, dynamic> json) => _$ViewPreferencesFromJson(json);
}

enum ViewMode { list, grid }
