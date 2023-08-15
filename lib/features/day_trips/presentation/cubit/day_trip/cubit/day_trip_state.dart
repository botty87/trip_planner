part of 'day_trip_cubit.dart';

@freezed
class DayTripState with _$DayTripState {
  const factory DayTripState({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    String? errorMessage,
  }) = _DayTripState;

  const factory DayTripState.editing({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    required String? description,
    String? errorMessage,
    @Default(false) final bool isSaving,
  }) = DayTripStateEditing;

  const factory DayTripState.deleting({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    String? errorMessage,
    @Default(false) final bool deleted,
  }) = DayTripStateDeleting;
}
