import '../../../features/trip_stops/domain/entities/trip_stop.dart';
import '../../utilities/pair.dart';

mixin TripStopStartEndTimeMixin {
  Pair<DateTime, DateTime> getTripStartEndTimes({
    required List<TripStop> tripStops,
    required List<Pair<DateTime, DateTime>> tripStopStartEndTimes,
    required DateTime dayTripStartDateTime,
    required int currentIndex,
  }) {
    final tripStop = tripStops[currentIndex];
    if (currentIndex == 0) {
      return Pair(
          dayTripStartDateTime, dayTripStartDateTime.add(Duration(minutes: tripStop.duration)));
    } else {
      final previousTripStop = tripStops[currentIndex - 1];
      final previousTripStopStartEndTime = tripStopStartEndTimes[currentIndex - 1];
      final startTime = previousTripStopStartEndTime.second
          .add(Duration(minutes: previousTripStop.travelTimeToNextStop));
      return Pair(startTime, startTime.add(Duration(minutes: tripStop.duration)));
    }
  }
}
