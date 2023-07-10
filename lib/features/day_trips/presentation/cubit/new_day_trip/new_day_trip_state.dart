part of 'new_day_trip_cubit.dart';

@freezed
class NewDayTripState with _$NewDayTripState {
  const factory NewDayTripState({
    final String? name,
    final String? description,
    @Default(false) final bool isSaving,
    @Default(false) final bool createSuccess,
    String? errorMessage,
  }) = _NewDayTripState;

}
