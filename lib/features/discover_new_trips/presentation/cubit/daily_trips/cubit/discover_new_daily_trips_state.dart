part of 'discover_new_daily_trips_cubit.dart';

@freezed
sealed class DiscoverNewDailyTripsState with _$DiscoverNewDailyTripsState {
  const factory DiscoverNewDailyTripsState.initial() = StateInitial;

  const factory DiscoverNewDailyTripsState.loading() = StateLoading;

  const factory DiscoverNewDailyTripsState.loaded({required List<DayTrip> dayTrips}) = StateLoaded;

  const factory DiscoverNewDailyTripsState.error({required String message}) = StateError;
}
