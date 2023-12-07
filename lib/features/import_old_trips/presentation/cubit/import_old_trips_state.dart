part of 'import_old_trips_cubit.dart';

@freezed
sealed class ImportOldTripsState with _$ImportOldTripsState {
  const factory ImportOldTripsState.initial() = _ImportOldTripsStateInitial;

  const factory ImportOldTripsState.loaded({
    required List<OldTrip> trips,
    @Default({}) Set<String> selectedTripsIds,
  }) = ImportOldTripsStateLoaded;

  const factory ImportOldTripsState.error({
    required String message,
  }) = ImportOldTripsStateError;

  const factory ImportOldTripsState.noTrips() = _ImportOldTripsStateNoTrips;

  const factory ImportOldTripsState.importing({
    required List<OldTrip> trips,
    @Default({}) Set<String> selectedTripsIds,
  }) = _ImportOldTripsStateImporting;

  const factory ImportOldTripsState.imported() = _ImportOldTripsStateImported;
}
