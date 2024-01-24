part of '../../../pages/discover_new_trip_stops_page.dart';

class _TripStopCard extends StatelessWidget {
  final TripStop tripStop;
  final Pair<DateTime, DateTime> tripStartEndTimes;

  const _TripStopCard({
    required this.tripStop,
    required this.tripStartEndTimes,
  });

  @override
  Widget build(BuildContext context) {
    return GenericTripCard(
      name: tripStop.name,
      date: _getDate(),
      description: tripStop.description,
      onTap: () => context.router.push(DiscoverNewTripStopRoute(tripStop: tripStop)),
    );
  }

  String _getDate() {
    final dateFormat = DateFormat('HH:mm');
    return '${dateFormat.format(tripStartEndTimes.first)} - ${dateFormat.format(tripStartEndTimes.second)}';
  }
}
