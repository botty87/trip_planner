// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../ui/widgets/generics/items_render_mode.dart';
import '../../../settings/domain/entities/settings.dart';
import '../../../tutorials/domain/entities/tutorials_data.dart';
import '../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String email,
    required String name,
    @Default(false) bool oldTripsImported,
    @Default(Settings()) Settings settings,
    @Default(TutorialsData()) TutorialsData tutorialsData,
    @Default(ViewMode.grid) ViewMode largeScreenViewMode,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  User toUser() {
    return User(
      id: id!,
      email: email,
      name: name,
      oldTripsImported: oldTripsImported,
      settings: settings,
      tutorialsData: tutorialsData,
      largeScreenViewMode: largeScreenViewMode,
    );
  }
}
