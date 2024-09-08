import '../../../domain/entities/trip.dart';

mixin TripsSortMixin {
  /// Get the sorted trips from the user trips and shared trips
  List<Trip> getSortedTrips({required List<Trip> userTrips, required List<Trip> sharedTrips}) {
    return [...userTrips, ...sharedTrips]..sort((a, b) => a.name.compareTo(b.name));
  }
}
