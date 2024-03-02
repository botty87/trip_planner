import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../settings/domain/entities/settings.dart';
import '../../../tutorials/domain/entities/tutorials_data.dart';

part 'user_db.freezed.dart';
part 'user_db.g.dart';

@freezed
sealed class UserDB with _$UserDB {
  const factory UserDB({
    required String email,
    required String name,
    @Default(false) bool oldTripsImported,
    @Default(Settings()) Settings settings,
    @Default(TutorialsData()) TutorialsData tutorialsData,
  }) = _UserDB;

  factory UserDB.fromJson(Map<String, dynamic> json) => _$UserDBFromJson(json);
}
