part of 'new_trip_stop_cubit.dart';

@freezed
sealed class NewTripStopState with _$NewTripStopState {
  const factory NewTripStopState.normal({
    final String? name,
    final String? description,
    final TimeOfDay? startTime,
    final TimeOfDay? endTime,
  }) = NewTripStopStateNormal;
}
