part of 'new_day_trip_cubit.dart';

@freezed
sealed class NewDayTripState with _$NewDayTripState {
  const factory NewDayTripState.normal({
    final String? description,
  }) = NewDayTripStateNormal;

  const factory NewDayTripState.saving({
    required final String? description,
  }) = NewDayTripStateSaving;

  const factory NewDayTripState.created({
    final String? description,
  }) = NewDayTripStateCreated;

  const factory NewDayTripState.error({
    required final String? description,
    required final String errorMessage,
  }) = NewDayTripStateError;
}
