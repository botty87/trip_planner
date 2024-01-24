part of 'trip_cubit.dart';

@freezed
sealed class TripState with _$TripState {
  const factory TripState.initial({
    required final Trip trip,
  }) = _Initial;

  const factory TripState.loaded({
    required final Trip trip,
    required List<DayTrip> dayTrips,
  }) = _Normal;

  /* const factory TripState.loading({
    required final Trip trip,
    @Default([]) final List<DayTrip> dayTrips,
  }) = TripStateLoading; */

  const factory TripState.error({
    required final Trip trip,
    required String errorMessage,
    required bool fatal,
  }) = _Error;

  const factory TripState.editing({
    required final Trip trip,
    required List<DayTrip> dayTrips,
    required final String name,
    required final String? description,
    required final DateTime startDate,
    required final bool isPublic,
    @Default(false) final bool isSaving,
    String? errorMessage,
  }) = _Editing;

  const factory TripState.deleting({
    required final Trip trip,
  }) = _Deleting;

  const factory TripState.deleted({
    required final Trip trip,
  }) = _Deleted;
}
