part of 'discover_new_trips_cubit.dart';

@freezed
class DiscoverNewTripsState with _$DiscoverNewTripsState {
  const factory DiscoverNewTripsState.initial() = _StateInitial;

  const factory DiscoverNewTripsState.normal({
    @Default('') String query,
    required List<Trip> trips,
    required List<Trip> filteredTrips,
    @Default(false) bool searchDescription,
    @Default(false) bool isMoreSectionOpen,
    required Set<Language> selectedLanguages,
    @Default('') String languageQuery,
    required Set<Language> availableLanguages,
    @Default(false) bool showOnlySelectedLanguages,
  }) = _StateNormal;

  const factory DiscoverNewTripsState.error({
    required String message,
  }) = _StateError;
}
