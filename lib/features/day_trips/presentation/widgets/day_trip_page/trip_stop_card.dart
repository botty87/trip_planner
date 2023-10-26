part of '../../pages/day_trip_page.dart';

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
  VoidCallback? get onTap => () {
        final state = context.read<DayTripCubit>().state;
        context.router
            .push(TripStopRoute(trip: state.trip, dayTrip: state.dayTrip, tripStop: tripStop));
      };

  @override
  Color? get color => tripStop.isDone ? Colors.green[100] : null;
}
