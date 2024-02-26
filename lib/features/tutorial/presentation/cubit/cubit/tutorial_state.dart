part of 'tutorial_cubit.dart';

@freezed
class TutorialState with _$TutorialState {
  const factory TutorialState({
    required bool showWelcome,
    required bool showPublicTrip,
  }) = _TutorialState;
}

extension TutorialStateX on TutorialsState {
  TutorialState toTutorialState() {
    return TutorialState(
      showWelcome: showWelcome,
      showPublicTrip: showPublicTrip,
    );
  }
}