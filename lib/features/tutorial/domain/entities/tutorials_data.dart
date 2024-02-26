import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/cubit/cubit/tutorial_cubit.dart';

part 'tutorials_data.freezed.dart';
part 'tutorials_data.g.dart';

@freezed
sealed class TutorialsData with _$TutorialsData {
  const factory TutorialsData({
    @Default(true) bool showWelcome,
    @Default(true) bool showPublicTrip,
  }) = _TutorialsData;

  factory TutorialsData.fromJson(Map<String, dynamic> json) => _$TutorialsDataFromJson(json);

}
