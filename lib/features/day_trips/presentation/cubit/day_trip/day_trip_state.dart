part of 'day_trip_cubit.dart';

@freezed
sealed class DayTripState with _$DayTripState {
  const factory DayTripState.initial({
    required Trip trip,
    required DayTrip dayTrip,
    @Default(false) bool hasStartTimeToSave,
  }) = DayTripStateInitial;

  const factory DayTripState.loaded({
    required Trip trip,
    required DayTrip dayTrip,
    required List<TripStop> tripStops,
    @Default(false) bool hasStartTimeToSave,
    @Default(false) bool explictitStartTimeSave,
    TripStopPlaceholder? tripStopPlaceholderEditing,
  }) = DayTripStateLoaded;

  const factory DayTripState.error({
    required Trip trip,
    required DayTrip dayTrip,
    required String errorMessage,
    required bool fatal,
    required bool hasStartTimeToSave,
  }) = DayTripStateError;

  const factory DayTripState.editing({
    required Trip trip,
    required DayTrip dayTrip,
    required List<TripStop> tripStops,
    required String? description,
    @Default(false) final bool isSaving,
    required bool hasStartTimeToSave,
    String? errorMessage,
  }) = DayTripStateEditing;

  const factory DayTripState.deleting({
    required Trip trip,
    required DayTrip dayTrip,
    required List<TripStop> tripStops,
    required bool hasStartTimeToSave,
  }) = DayTripStateDeleting;

  const factory DayTripState.deleted({
    required Trip trip,
    required DayTrip dayTrip,
    @Default(false) bool hasStartTimeToSave,
  }) = DayTripStateDeleted;
}
