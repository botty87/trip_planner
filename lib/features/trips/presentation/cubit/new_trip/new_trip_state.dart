part of 'new_trip_cubit.dart';

@freezed
sealed class NewTripState with _$NewTripState {
  const factory NewTripState.normal({
    String? tripName,
    String? tripDescription,
    DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
    @Default(false) bool isPublic,
  }) = NewTripStateNormal;

  const factory NewTripState.saving({
    required String? tripName,
    required String? tripDescription,
    required DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
    @Default(false) bool isPublic,
  }) = NewTripStateSaving;

  const factory NewTripState.created({
    String? tripName,
    String? tripDescription,
    DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
    @Default(false) bool isPublic,
  }) = NewTripStateCreated;

  const factory NewTripState.error({
    required String? tripName,
    required String? tripDescription,
    required DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
    @Default(false) bool isPublic,
    required String errorMessage,
  }) = NewTripStateError;
}
