part of 'trip_stops_map_cubit.dart';

@freezed
class TripStopsMapState with _$TripStopsMapState {

  const factory TripStopsMapState.normal({
    @Default(MapType.hybrid) MapType mapType,
    @Default(false) bool isLoading,
    required DayTrip dayTrip,
  }) = TripStopsMapStateNormal;

  const factory TripStopsMapState.error({
    @Default(MapType.hybrid) MapType mapType,
    @Default(false) bool isLoading,
    required DayTrip dayTrip,
    required String errorMessage,
  }) = TripStopsMapStateError;
}