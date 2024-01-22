part of 'map_cubit.dart';

@freezed
sealed class MapState with _$MapState {
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

  const factory MapState.empty({
    @Default(false) bool isMapReady,
    @Default(MapType.hybrid) MapType mapType,
  }) = _MapStateEmpty;

  bool get isMapBoundsEmpty {
    return map(
      multiple: (state) => state.markerLatLngBounds == null,
      single: (state) => state.markerPosition == null,
      empty: (_) => true,
    );
  }
}

@freezed
sealed class MapStateType with _$MapStateType {
  const factory MapStateType.multiple() = _MapStateTypeMultiple;

  const factory MapStateType.single() = _MapStateTypeSingle;

  const factory MapStateType.empty() = _MapStateTypeEmpty;
}
