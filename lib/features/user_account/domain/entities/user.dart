import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../settings/domain/entities/settings.dart';
import '../../../tutorials/domain/entities/tutorials_data.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String name,
    @Default(true) bool oldTripsImported,
    @Default(Settings()) Settings settings,
    required TutorialsData tutorialsData,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
