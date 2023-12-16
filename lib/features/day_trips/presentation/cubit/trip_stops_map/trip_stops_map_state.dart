part of 'trip_stops_map_cubit.dart';

@freezed
class TripStopsMapState with _$TripStopsMapState {

  const factory TripStopsMapState({
    @Default(MapType.hybrid) MapType mapType,
    CameraPosition? currentCameraPosition,
  }) = _TripStopsMapState;

}