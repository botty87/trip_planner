part of 'new_trip_cubit.dart';

@freezed
sealed class NewTripState with _$NewTripState {
  const factory NewTripState({
    String? tripName,
    String? tripDescription,
    String? errorMessage,
    @Default(false) bool isLoading,
  }) = _NewTripState;

}
