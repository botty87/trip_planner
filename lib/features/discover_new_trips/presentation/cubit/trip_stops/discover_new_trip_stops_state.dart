part of 'discover_new_trip_stops_cubit.dart';

@freezed
sealed class DiscoverNewTripStopsState with _$DiscoverNewTripStopsState {
  const factory DiscoverNewTripStopsState.initial() = _Initial;

  const factory DiscoverNewTripStopsState.loaded({
    required List<TripStop> tripStops,
    @Default(false) bool isMapReady,
    @Default(MapType.hybrid) MapType mapType,
    LatLngBounds? markerLatLngBounds,
  }) = _Loaded;

  const factory DiscoverNewTripStopsState.error({
    required String message,
  }) = _Error;
}
