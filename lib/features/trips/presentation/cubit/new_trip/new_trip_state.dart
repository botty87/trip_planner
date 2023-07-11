part of 'new_trip_cubit.dart';

@freezed
sealed class NewTripState with _$NewTripState {
  const factory NewTripState({
    String? tripName,
    String? tripDescription,
    DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
    String? errorMessage,
    @Default(false) bool isLoading,
    @Default(false) bool createSuccess,
  }) = _NewTripState;
}
