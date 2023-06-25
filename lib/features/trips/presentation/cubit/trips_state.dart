part of 'trips_cubit.dart';

@freezed
class TripsState with _$TripsState {

  factory TripsState({
    @Default([]) List<Trip> trips,
  }) = _TripsState;

}
