import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../ui/widgets/generics/items_render_mode.dart';
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
    required Settings settings,
    required TutorialsData tutorialsData,
    required ViewMode largeScreenViewMode,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
