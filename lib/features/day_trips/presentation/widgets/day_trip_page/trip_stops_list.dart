part of '../../pages/day_trip_page.dart';

class _TripStopsList extends StatelessWidget {
  const _TripStopsList();

  @override
  Widget build(BuildContext context) {
    final tripStops = context.select((DayTripCubit cubit) => cubit.state.tripStops);
    final DateTime dayTripStartDateTime = context.select((DayTripCubit cubit) {
      final startDate = cubit.state.trip.startDate;
      final startTime = cubit.state.dayTrip.startTime;
      return DateTime(
          startDate.year, startDate.month, startDate.day, startTime.hour, startTime.minute);
    });

    //this is needed to avoid the recalculation of the trip start and end times on every build, during the reordering
    final List<Pair<DateTime, DateTime>> tripStopStartEndTimes = [];

    return CustomReorderableListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) =>
          TravelCard(tripStop: tripStops[(index / 2).truncate()]),
      itemCount: tripStops.length,
      itemBuilder: (context, index) {
        final tripStop = tripStops[index];
        if (tripStopStartEndTimes.length <= index) {
          tripStopStartEndTimes.add(_getTripStartEndTimes(
            tripStops: tripStops,
            tripStopStartEndTimes: tripStopStartEndTimes,
            dayTripStartDateTime: dayTripStartDateTime,
            currentIndex: index,
          ));
        }
        final widget = Padding(
          key: ValueKey(tripStop.id),
          padding: const EdgeInsets.only(bottom: verticalSpaceXs),
          child: _TripStopCard(
            tripStop: tripStop,
            tripStartEndTimes: tripStopStartEndTimes[index],
            context: context,
          ),
        );
        return widget;
      },
      proxyDecorator: (child, index, animation) {
        return TransparentListDecorator(
          index: index,
          animation: animation,
          child: child,
        );
      },
      onReorder: (int oldIndex, int newIndex) {
        tripStopStartEndTimes.clear();
        context.read<DayTripCubit>().reorderTripStops(oldIndex, newIndex);
      },
    );
  }

  Pair<DateTime, DateTime> _getTripStartEndTimes({
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
