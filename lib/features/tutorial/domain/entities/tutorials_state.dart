import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutorials_state.freezed.dart';
part 'tutorials_state.g.dart';

@freezed
sealed class TutorialsState with _$TutorialsState {

  const factory TutorialsState({
    @Default(true) bool showWelcome,
  }) = _TutorialsState;

  factory TutorialsState.fromJson(Map<String, dynamic> json) => _$TutorialsStateFromJson(json);
}