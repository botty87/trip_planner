part of 'trip_cubit.dart';

@freezed
sealed class TripState with _$TripState {
  const factory TripState.initial({
    required final Trip trip,
    required ViewMode viewMode,
  }) = TripStateInitial;

  const factory TripState.loaded({
    required final Trip trip,
    required List<DayTrip> dayTrips,
    required ViewMode viewMode,
  }) = TripStateLoaded;

  const factory TripState.error({
    required final Trip trip,
    required String errorMessage,
    required ViewMode viewMode,
    required bool fatal,
  }) = TripStateError;

  const factory TripState.editing({
    required final Trip trip,
    required List<DayTrip> dayTrips,
    required final String name,
    required final String? description,
    required final DateTime startDate,
    required final bool isPublic,
    required final String languageCode,
    @Default(false) final bool isSaving,
    String? errorMessage,
    required ViewMode viewMode,
  }) = TripStateEditing;

  const factory TripState.deleting({
    required final Trip trip,
    required ViewMode viewMode,
  }) = TripStateDeleting;

  const factory TripState.deleted({
    required final Trip trip,
    required ViewMode viewMode,
  }) = TripStateDeleted;
}
