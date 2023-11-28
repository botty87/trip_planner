part of 'google_places_cubit.dart';

@freezed
sealed class GooglePlacesState with _$GooglePlacesState {
  const factory GooglePlacesState.normal({
    @Default([]) List<Suggestion> suggestions,
    @Default(false) bool isLoading,
    PlaceDetails? placeDetails,
  }) = _GooglePlacesStateNormal;

  const factory GooglePlacesState.error({
    required GooglePlacesError error,
    @Default([]) List<Suggestion> suggestions,
    required bool showRetryButton,
  }) = _GooglePlacesStateError;
}

@freezed
sealed class GooglePlacesError with _$GooglePlacesError {
  const factory GooglePlacesError.noInternetConnection() = _GooglePlacesErrorNoInternetConnection;

  const factory GooglePlacesError.requestDenied({required String message}) =
      _GooglePlacesErrorRequestDenied;

  const factory GooglePlacesError.requestCancelled() = _GooglePlacesErrorRequestCancelled;

  const factory GooglePlacesError.unknownError({String? message}) = _GooglePlacesErrorUnknownError;
}
