part of 'new_trip_cubit.dart';

@freezed
sealed class NewTripState with _$NewTripState {
  const factory NewTripState.normal({
    String? tripName,
    String? tripDescription,
    DateTime? startDate,
    @Default(false) bool isStartDateBeforeToday,
    @Default(false) bool isPublic,
    required String languageCode,
  }) = _Normal;

  const factory NewTripState.saving() = _Saving;

  const factory NewTripState.created() = _Created;

  const factory NewTripState.error({required String errorMessage}) = _Error;
}
