part of 'map_cubit.dart';

@freezed
class MapState with _$MapState {
  const MapState._();

  const factory MapState.multiple({
    @Default(false) bool isMapReady,
    @Default(MapType.hybrid) MapType mapType,
    LatLngBounds? markerLatLngBounds,
  }) = _MapStateMultiple;

  const factory MapState.single({
    @Default(false) bool isMapReady,
    @Default(MapType.hybrid) MapType mapType,
    LatLng? markerPosition,
  }) = _MapStateSingle;

  bool get isMapBoundsEmpty {
    return map(
      multiple: (state) => state.markerLatLngBounds == null,
      single: (state) => state.markerPosition == null,
    );
  }
}
