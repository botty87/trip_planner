part of 'trips_cubit.dart';

@freezed
class TripsState with _$TripsState {
  const factory TripsState.initial() = _Initial;

  const factory TripsState.loaded({required List<Trip> trips}) = _Loaded;

  const factory TripsState.error({required String message}) = _Error;
}
