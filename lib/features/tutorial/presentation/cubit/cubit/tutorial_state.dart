part of 'tutorial_cubit.dart';

@freezed
class TutorialState with _$TutorialState {
  const factory TutorialState({
    required bool showWelcome,
    required bool showPublicTrip,
    required bool showCreateFromPublicTrip,
    required bool showTripStopSlide,
  }) = _TutorialState;
}

extension TutorialStateX on TutorialState {
  TutorialsData toTutorialsData() {
    return TutorialsData(
      showWelcome: showWelcome,
      showPublicTrip: showPublicTrip,
      showCreateFromPublicTrip: showCreateFromPublicTrip,
      showTripStopSlide: showTripStopSlide,
    );
  }
}

extension TutorialsDataX on TutorialsData {
  TutorialState toTutorialState() {
    return TutorialState(
      showWelcome: showWelcome,
      showPublicTrip: showPublicTrip,
      showCreateFromPublicTrip: showCreateFromPublicTrip,
      showTripStopSlide: showTripStopSlide,
    );
  }
}
