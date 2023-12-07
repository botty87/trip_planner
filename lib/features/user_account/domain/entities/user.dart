import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_db.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  factory User({
    required String id,
    required String email,
    required String name,
    @Default(true) bool oldTripsImported,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserX on User {
  UserDB toUserDB() => UserDB(
        email: email,
        name: name,
      );
}
