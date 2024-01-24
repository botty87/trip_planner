part of '../../../pages/discover_new_trip_stops_page.dart';

class _DiscoverNewTripStopsList extends StatelessWidget with TripStopStartEndTimeMixin {
  final DayTrip _dayTrip;

  const _DiscoverNewTripStopsList({
    required DayTrip dayTrip,
  }) : _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    final tripStops = context.select((DiscoverNewTripStopsCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.tripStops,
          orElse: () => throw Exception('Unexpected state'),
        ));

    final DateTime dayTripStartDateTime = DateTime.now().copyWith(
      hour: _dayTrip.startTime.hour,
      minute: _dayTrip.startTime.minute,
    );

    //this is needed to avoid the recalculation of the trip start and end times on every build
    final List<Pair<DateTime, DateTime>> tripStopStartEndTimes = [];
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tripStops.length,
      itemBuilder: (context, index) {
        final tripStop = tripStops[index];
        if (tripStopStartEndTimes.length <= index) {
          tripStopStartEndTimes.add(getTripStartEndTimes(
            tripStops: tripStops,
            tripStopStartEndTimes: tripStopStartEndTimes,
            dayTripStartDateTime: dayTripStartDateTime,
            currentIndex: index,
          ));
        }

        return _TripStopCard(
          tripStop: tripStop,
          tripStartEndTimes: tripStopStartEndTimes[index],
        );
      },
      separatorBuilder: (context, index) => _TravelCard(tripStop: tripStops[index]),
    );
  }
}
