part of 'discover_new_trips_cubit.dart';

@freezed
sealed class DiscoverNewTripsState with _$DiscoverNewTripsState {
  const factory DiscoverNewTripsState.initial() = _StateInitial;

  //const factory DiscoverNewTripsState.loading() = _StateLoading;

  const factory DiscoverNewTripsState.normal({
    @Default('') String query,
    required List<Trip> trips,
    required List<Trip> filteredTrips,
    @Default(false) bool searchDescription,
  }) = _StateNormal;

  const factory DiscoverNewTripsState.error({
    required String message,
  }) = _StateError;
}
