part of 'discover_new_trip_stop_cubit.dart';

@freezed
class DiscoverNewTripStopState with _$DiscoverNewTripStopState {
  const factory DiscoverNewTripStopState({
    required TripStop tripStop,
    @Default(MapType.hybrid) MapType mapType,
    @Default(false) bool isMapReady,
  }) = _Normal;
}
