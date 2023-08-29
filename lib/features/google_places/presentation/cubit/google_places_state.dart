part of 'google_places_cubit.dart';

@freezed
class GooglePlacesState with _$GooglePlacesState {

  const factory GooglePlacesState.normal({
    @Default([]) List<Suggestion> suggestions,
    @Default(false) bool isLoading,
    @Default('') String currentQuery,
  }) = _GooglePlacesStateNormal;

  const factory GooglePlacesState.error({
    required String message,
    required String currentQuery,
  }) = _GooglePlacesStateError;

}
