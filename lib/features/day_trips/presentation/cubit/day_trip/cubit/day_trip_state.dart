part of 'day_trip_cubit.dart';

@freezed
sealed class DayTripState with _$DayTripState {
  const factory DayTripState.normal({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    @Default(false) bool hasStartTimeToSave,
    @Default(false) bool explictitStartTimeSave,
    @Default(false) bool isSaving,
  }) = DayTripStateNormal;

  const factory DayTripState.loading({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    @Default(false) bool hasStartTimeToSave,
  }) = DayTripStateLoading;

  const factory DayTripState.error({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    String? errorMessage,
    @Default(false) bool hasStartTimeToSave,
  }) = DayTripStateError;

  const factory DayTripState.editing({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    required String? description,
    @Default(false) final bool isSaving,
    @Default(false) bool hasStartTimeToSave,
  }) = DayTripStateEditing;

  const factory DayTripState.deleting({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    @Default(false) bool hasStartTimeToSave,
  }) = DayTripStateDeleting;

  const factory DayTripState.deleted({
    required Trip trip,
    required DayTrip dayTrip,
    @Default([]) List<TripStop> tripStops,
    @Default(false) bool hasStartTimeToSave,
  }) = DayTripStateDeleted;
}
