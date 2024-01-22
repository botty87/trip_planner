part of '../../../pages/discover_new_trip_stops_page.dart';

final class _TripStopCard extends GenericTripCard {
  final TripStop tripStop;
  final Pair<DateTime, DateTime> tripStartEndTimes;
  final BuildContext context;

  const _TripStopCard({
    required this.tripStop,
    required this.tripStartEndTimes,
    required this.context,
  });

  @override
  String get name => tripStop.name;

  @override
  String get date {
    final dateFormat = DateFormat('HH:mm');
    return '${dateFormat.format(tripStartEndTimes.first)} - ${dateFormat.format(tripStartEndTimes.second)}';
  }

  @override
  String? get description => tripStop.description;

  @override
  VoidCallback? get onTap =>
      () => context.router.push(DiscoverNewTripStopRoute(tripStop: tripStop));

  @override
  Color? get color => null;
}
