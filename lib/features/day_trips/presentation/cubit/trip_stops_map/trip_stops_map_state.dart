part of 'trip_stops_map_cubit.dart';

@freezed
class TripStopsMapState with _$TripStopsMapState {
  const TripStopsMapState._();

  const factory TripStopsMapState.normal({
    @Default(false) bool isLoading,
    required DayTrip dayTrip,
    String? errorMessage,
    @Default(true) bool isSelectedTab,
    @Default(false) bool hasTripStopsDirectionsErrors,
  }) = _TripStopsMapStateNormal;

  bool get isTripStopsDirectionsToLoad =>
      !dayTrip.tripStopsDirectionsUpToDate && isSelectedTab && !isLoading;
}
