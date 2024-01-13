// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utilities/data_converter.dart';
import '../../../settings/domain/entities/settings.dart';

part 'user_db.freezed.dart';
part 'user_db.g.dart';

@freezed
sealed class UserDB with _$UserDB {
  const factory UserDB({
    required String email,
    required String name,
    @Default(false) bool oldTripsImported,
    @JsonKey(fromJson: settingsFromMap, toJson: settingsToMap)
    @Default(Settings()) Settings settings,
  }) = _UserDB;

  factory UserDB.fromJson(Map<String, dynamic> json) => _$UserDBFromJson(json);
}
