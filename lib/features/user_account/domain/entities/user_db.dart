import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_db.freezed.dart';
part 'user_db.g.dart';

@freezed
sealed class UserDB with _$UserDB {
  factory UserDB({
    required String email,
    required String name,
  }) = _UserDB;

  factory UserDB.fromJson(Map<String, dynamic> json) => _$UserDBFromJson(json);
}
