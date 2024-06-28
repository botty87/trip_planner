part of 'tutorial_cubit.dart';

@freezed
sealed class TutorialState with _$TutorialState {
  const factory TutorialState({
    required bool showWelcome,
    required bool showPublicTrip,
    required bool showCreateFromPublicTrip,
    required bool showTripStopSlide,
    required bool showShareTrip,
    required bool showTripStopTravelPlaceholder,
  }) = _TutorialState;
}

extension TutorialStateX on TutorialState {
  TutorialsData toTutorialsData() {
    return TutorialsData(
      showWelcome: showWelcome,
      showPublicTrip: showPublicTrip,
      showCreateFromPublicTrip: showCreateFromPublicTrip,
      showTripStopSlide: showTripStopSlide,
      showShareTrip: showShareTrip,
      showTripStopTravelPlaceholder: showTripStopTravelPlaceholder,
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
      showShareTrip: showShareTrip,
      showTripStopTravelPlaceholder: showTripStopTravelPlaceholder,
    );
  }
}
