part of '../../../pages/day_trip_page.dart';


final class _TripStopCard extends StatelessWidget {
  final TripStop tripStop;
  final Pair<DateTime, DateTime> tripStartEndTimes;
  final SlidableController? slidableController;

  const _TripStopCard({
    required this.tripStop,
    required this.tripStartEndTimes,
    required this.slidableController,
  });
  
  @override
  Widget build(BuildContext context) {
    return GenericTripCard(
      name: tripStop.name,
      date: _getDate(),
      description: tripStop.description,
      onTap: () {
        slidableController?.close();
        final state = context.read<DayTripCubit>().state;
        context.router
            .push(TripStopRoute(trip: state.trip, dayTrip: state.dayTrip, tripStop: tripStop));
      },
      color: tripStop.isDone ? Colors.green[100] : null,
    );
  }

  String _getDate() {
    final dateFormat = DateFormat('HH:mm');
    return '${dateFormat.format(tripStartEndTimes.first)} - ${dateFormat.format(tripStartEndTimes.second)}';
  }

}
