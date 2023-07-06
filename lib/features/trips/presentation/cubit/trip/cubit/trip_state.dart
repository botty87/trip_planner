part of 'trip_cubit.dart';

@freezed
sealed class TripState with _$TripState {
  const factory TripState({
    required final Trip trip,
    String? errorMessage,
  }) = _TripState;

  const factory TripState.editing({
    required final Trip trip,
    required final String name,
    required final String? description,
    @Default(false) final bool isSaving,
    String? errorMessage,
  }) = TripStateEditing;
}
