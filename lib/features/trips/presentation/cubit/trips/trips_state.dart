part of 'trips_cubit.dart';

@freezed
sealed class TripsState with _$TripsState {
  const factory TripsState.initial() = TripsStateInitial;

  const factory TripsState.loaded({
    required List<Trip> userTrips,
    required List<Trip> sharedTrips,
    @Default(ViewMode.grid) ViewMode viewMode,
  }) = TripsStateLoaded;

  const factory TripsState.error({required String message}) = TripsStateError;
}
