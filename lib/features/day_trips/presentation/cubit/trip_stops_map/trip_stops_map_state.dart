part of 'trip_stops_map_cubit.dart';

@freezed
class TripStopsMapState with _$TripStopsMapState {
  const factory TripStopsMapState.normal({
    @Default(MapType.hybrid) MapType mapType,
    @Default(false) bool isLoading,
    required DayTrip dayTrip,
    String? errorMessage,
    @Default(false) bool isMapReady,
    LatLngBounds? markerLatLngBounds,
    @Default(true) bool showDirections,
    @Default(true) bool useDifferentColors,
    @Default(true) bool isSelectedTab,
    @Default(false) bool hasTripStopsDirectionsErrors,
  }) = TripStopsMapStateNormal;
}
