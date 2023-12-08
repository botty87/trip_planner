part of 'map_cubit.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    @Default(MapType.hybrid) MapType mapType,
  }) = _Initial;
}
