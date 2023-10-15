part of 'new_trip_stop_cubit.dart';

@freezed
sealed class NewTripStopState with _$NewTripStopState {
  const factory NewTripStopState.normal({
    String? name,
    String? description,
    @Default(0) int hourDuration,
    @Default(0) int minuteDuration,
    LatLng? location,
  }) = NewTripStopStateNormal;

  const factory NewTripStopState.saving({
    required String name,
    required String? description,
    required int hourDuration,
    required int minuteDuration,
    required LatLng location,
  }) = NewTripStopStateSaving;

  const factory NewTripStopState.created({
    required String name,
    required String? description,
    required int hourDuration,
    required int minuteDuration,
    required LatLng location,
  }) = NewTripStopStateCreated;

  const factory NewTripStopState.error({
    required String? name,
    required String? description,
    required int hourDuration,
    required int minuteDuration,
    required LatLng? location,
    required String errorMessage,
  }) = NewTripStopStateError;
}
