import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../settings/domain/entities/settings.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  factory User({
    required String id,
    required String email,
    required String name,
    @Default(true) bool oldTripsImported,
    @Default(Settings()) Settings settings,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
