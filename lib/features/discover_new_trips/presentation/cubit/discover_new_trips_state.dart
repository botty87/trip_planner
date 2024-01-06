part of 'discover_new_trips_cubit.dart';

@freezed
sealed class DiscoverNewTripsState with _$DiscoverNewTripsState {
  const factory DiscoverNewTripsState.loading({
    @Default('') String query,
    @Default([]) List<Trip> trips,
    @Default([]) List<Trip> filteredTrips,
    @Default(false) bool searchDescription,
  }) = _DiscoverNewtripsStateLoading;

  const factory DiscoverNewTripsState.normal({
    required String query,
    required List<Trip> trips,
    required List<Trip> filteredTrips,
    required bool searchDescription,
  }) = _DiscoverNewtripsStateNormal;

  

  const factory DiscoverNewTripsState.error({
    required String query,
    required List<Trip> trips,
    required List<Trip> filteredTrips,
    required bool searchDescription,
    required String message,
  }) = _DiscoverNewtripsStateError;
}
