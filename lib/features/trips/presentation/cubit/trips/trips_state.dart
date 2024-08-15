part of 'trips_cubit.dart';

@freezed
sealed class TripsState with _$TripsState {
  const factory TripsState.initial({BannerAdEntity? ad}) = TripsStateInitial;

  const factory TripsState.loaded({
    required List<Trip> userTrips,
    required List<Trip> sharedTrips,
    BannerAdEntity? ad,
  }) = TripsStateLoaded;

  const factory TripsState.error({required String message, BannerAdEntity? ad}) = TripsStateError;
}
