import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../settings/domain/entities/settings.dart';
import '../../../settings/domain/entities/view_preferences.dart';
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
    required Settings settings,
    required TutorialsData tutorialsData,
    required ViewPreferences viewPreferences,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
