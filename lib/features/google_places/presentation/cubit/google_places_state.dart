part of 'google_places_cubit.dart';


@freezed
class GooglePlacesState with _$GooglePlacesState {
  const factory GooglePlacesState.normal({
    @Default([]) List<Suggestion> suggestions,
    @Default(false) bool isLoading,
    @Default('') String currentQuery,
    PlaceDetails? placeDetails,
  }) = _GooglePlacesStateNormal;

  const factory GooglePlacesState.error(
      {required String message,
      required String currentQuery,
      @Default([]) List<Suggestion> suggestions}) = _GooglePlacesStateError;
}
