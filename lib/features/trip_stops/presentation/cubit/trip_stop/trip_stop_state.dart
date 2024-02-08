part of 'trip_stop_cubit.dart';

@freezed
sealed class TripStopState with _$TripStopState {
  const factory TripStopState.normal({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
    @Default(false) bool hasTripNoteToSave,
  }) = TripStopStateNormal;

  const factory TripStopState.editing({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
    @Default(false) bool hasTripNoteToSave,
    String? name,
    String? description,
    int? hourDuration,
    int? minuteDuration,
    LatLng? location,
    String? errorMessage,
  }) = TripStopStateEditing;

  const factory TripStopState.saving({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
    @Default(false) bool hasTripNoteToSave,
  }) = TripStopStateSaving;

  const factory TripStopState.noteSaving({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
    @Default(false) bool hasTripNoteToSave,
  }) = TripStopStateNoteSaving;

  const factory TripStopState.deleting({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
    @Default(false) bool hasTripNoteToSave,
  }) = TripStopStateDeleting;

  const factory TripStopState.deleted({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
    @Default(false) bool hasTripNoteToSave,
  }) = TripStopStateDeleted;

  const factory TripStopState.error({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
    required String message,
    @Default(false) bool hasTripNoteToSave,
  }) = TripStopStateError;
}
