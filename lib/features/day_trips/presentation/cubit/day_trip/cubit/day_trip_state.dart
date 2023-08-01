part of 'day_trip_cubit.dart';

@freezed
class DayTripState with _$DayTripState {
  const factory DayTripState({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    
  }) = _DayTripState;
}
