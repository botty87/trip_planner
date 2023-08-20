part of 'trip_cubit.dart';

@freezed
sealed class TripState with _$TripState {
  const factory TripState.normal({
    required final Trip trip,
    @Default([]) final List<DayTrip> dayTrips,
  }) = TripStateNormal;

  const factory TripState.error({
    required final Trip trip,
    @Default([]) final List<DayTrip> dayTrips,
    required String errorMessage,
  }) = TripStateError;

  const factory TripState.editing({
    required final Trip trip,
    @Default([]) final List<DayTrip> dayTrips,
    required final String name,
    required final String? description,
    required final DateTime startDate,
    @Default(false) final bool isSaving,
  }) = TripStateEditing;

  const factory TripState.deleting({
    required final Trip trip,
    @Default([]) final List<DayTrip> dayTrips,
  }) = TripStateDeleting;

  const factory TripState.deleted({
    required final Trip trip,
    @Default([]) final List<DayTrip> dayTrips,
  }) = TripStateDeleted;
}
