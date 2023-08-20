part of 'day_trip_cubit.dart';

@freezed
sealed class DayTripState with _$DayTripState {
  const factory DayTripState.normal({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
  }) = DayTripStateNormal;

  const factory DayTripState.error({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    String? errorMessage,
  }) = DayTripStateError;

  const factory DayTripState.editing({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    required String? description,
    @Default(false) final bool isSaving,
  }) = DayTripStateEditing;

  const factory DayTripState.deleting({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
  }) = DayTripStateDeleting;

  const factory DayTripState.deleted({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
  }) = DayTripStateDeleted;
}
