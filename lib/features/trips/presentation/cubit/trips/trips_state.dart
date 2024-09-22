part of 'trips_cubit.dart';

@freezed
sealed class TripsState with _$TripsState {
  const factory TripsState.initial({
    required ViewMode viewMode,
  }) = TripsStateInitial;

  const factory TripsState.loaded({
    required List<Trip> userTrips,
    required List<Trip> sharedTrips,
    required ViewMode viewMode,
  }) = TripsStateLoaded;

  const factory TripsState.error({
    required String message,
    required ViewMode viewMode,
  }) = TripsStateError;
}
