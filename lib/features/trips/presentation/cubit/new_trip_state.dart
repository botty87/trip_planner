part of 'new_trip_cubit.dart';

@freezed
class NewTripState with _$NewTripState {
  const factory NewTripState({
    String? tripName,
  }) = _NewTripState;

  const factory NewTripState.error({
    String? tripName,
    required String message,
  }) = _NewTripStateError;
}
