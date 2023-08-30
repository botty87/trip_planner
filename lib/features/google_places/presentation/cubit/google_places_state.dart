part of 'google_places_cubit.dart';


@freezed
class GooglePlacesState with _$GooglePlacesState {
  const factory GooglePlacesState.normal({
    @Default([]) List<Suggestion> suggestions,
    @Default(false) bool isLoading,
    PlaceDetails? placeDetails,
  }) = _GooglePlacesStateNormal;

  const factory GooglePlacesState.error(
      {required String message,
      @Default([]) List<Suggestion> suggestions}) = _GooglePlacesStateError;
}
