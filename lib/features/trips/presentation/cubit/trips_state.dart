part of 'trips_cubit.dart';

@freezed
class TripsState with _$TripsState {

  const factory TripsState({
    @Default([]) List<Trip> trips,
  }) = _TripsState;

}
