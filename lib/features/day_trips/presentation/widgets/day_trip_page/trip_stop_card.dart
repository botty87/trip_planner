part of '../../pages/day_trip_page.dart';

final class _TripStopCard extends GenericTripCard {
  final TripStop tripStop;
  final DateTime tripStartDate;
  final BuildContext context;
  final previousTripStopsMinutedDuration;

  const _TripStopCard({
    required this.tripStop,
    required this.tripStartDate,
    required this.context,
    required this.previousTripStopsMinutedDuration,
  });

  @override
  String get name => tripStop.name;

  @override
  String get date {
    final tripStopStartDateTime = DateFormat('HH:mm')
        .format(tripStartDate.add(Duration(minutes: previousTripStopsMinutedDuration)));
    final tripStopEndDateTime = DateFormat('HH:mm').format(
        tripStartDate.add(Duration(minutes: previousTripStopsMinutedDuration + tripStop.duration)));
    return '$tripStopStartDateTime - $tripStopEndDateTime';
  }

  @override
  String? get description => tripStop.description;

  @override
  VoidCallback? get onTap => () {
        //TODO implement
      };
}
