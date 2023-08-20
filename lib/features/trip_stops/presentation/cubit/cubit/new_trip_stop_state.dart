part of 'new_trip_stop_cubit.dart';

@freezed
class NewTripStopState with _$NewTripStopState {
  const factory NewTripStopState({
    final String? description,
    @Default(false) final bool isSaving,
    @Default(false) final bool createSuccess,
    String? errorMessage,
  }) = _NewTripStopState;
}
