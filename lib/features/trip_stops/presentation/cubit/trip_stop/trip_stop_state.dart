part of 'trip_stop_cubit.dart';

@freezed
sealed class TripStopState with _$TripStopState {
  const factory TripStopState.normal({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
  }) = TripStopStateNormal;

  const factory TripStopState.editing({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
  }) = TripStopStateEditing;

  const factory TripStopState.saving({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
  }) = TripStopStateSaving;

  const factory TripStopState.noteSaving({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
  }) = TripStopStateNoteSaving;

  const factory TripStopState.deleting({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
  }) = TripStopStateDeleting;

  const factory TripStopState.deleted({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
  }) = TripStopStateDeleted;

  const factory TripStopState.error({
    required Trip trip,
    required DayTrip dayTrip,
    required TripStop tripStop,
    required String message,
  }) = TripStopStateError;
}
