part of 'new_trip_cubit.dart';

@freezed
sealed class NewTripState with _$NewTripState {
  const factory NewTripState.normal({
    String? tripName,
    String? tripDescription,
    DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
  }) = NewTripStateNormal;

  const factory NewTripState.saving({
    required String? tripName,
    required String? tripDescription,
    required DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
  }) = NewTripStateSaving;

  const factory NewTripState.created({
    String? tripName,
    String? tripDescription,
    DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
  }) = NewTripStateCreated;

  const factory NewTripState.error({
    required String? tripName,
    required String? tripDescription,
    required DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
    required String errorMessage,
  }) = NewTripStateError;
}
