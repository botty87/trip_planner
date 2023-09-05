part of 'new_trip_stop_cubit.dart';

@freezed
sealed class NewTripStopState with _$NewTripStopState {
  const factory NewTripStopState.normal({
    final String? name,
    final String? description,
    final TimeOfDay? startTime,
    final TimeOfDay? endTime,
    final LatLng? location,
  }) = NewTripStopStateNormal;

  const factory NewTripStopState.saving({
    required String name,
    required String? description,
    required TimeOfDay startTime,
    required TimeOfDay endTime,
    required LatLng location,
  }) = NewTripStopStateSaving;

  const factory NewTripStopState.created({
    required final String name,
    required final String? description,
    required final TimeOfDay startTime,
    required final TimeOfDay endTime,
    required final LatLng location,
  }) = NewTripStopStateCreated;

  const factory NewTripStopState.error({
    required final String? name,
    required final String? description,
    required final TimeOfDay? startTime,
    required final TimeOfDay? endTime,
    required final LatLng? location,
    required final String errorMessage,
  }) = NewTripStopStateError;
}
