import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';

final class TripStopsContainer {
  final DayTrip dayTrip;
  final List<TripStop> tripStops = [];

  TripStopsContainer(this.dayTrip);

  void addTripStop(TripStop tripStop) {
    tripStops.add(tripStop);
  }
}
