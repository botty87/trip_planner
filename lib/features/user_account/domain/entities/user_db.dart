import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../settings/domain/entities/settings.dart';

part 'user_db.freezed.dart';
part 'user_db.g.dart';

@freezed
sealed class UserDB with _$UserDB {
  factory UserDB({
    required String email,
    required String name,
    @Default(false) bool oldTripsImported,
    @Default(Settings()) Settings settings,
  }) = _UserDB;

  factory UserDB.fromJson(Map<String, dynamic> json) => _$UserDBFromJson(json);
}
