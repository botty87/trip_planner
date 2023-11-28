part of 'trips_cubit.dart';

@freezed
class TripsState with _$TripsState {
  const factory TripsState({
    @Default([]) List<Trip> trips,
    @Default(true) bool isLoading,
    String? errorMessage,
  }) = _TripsState;
}
