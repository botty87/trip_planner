part of '../../../pages/discover_new_trip_stops_page.dart';

class _DiscoverNewTripStopsList extends HookWidget with TripStopStartEndTimeMixin {
  final DayTrip _dayTrip;

  const _DiscoverNewTripStopsList({
    required DayTrip dayTrip,
  }) : _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return LayoutBuilder(
      builder: (context, constraints) {
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

        final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
            ? constraints.maxWidth * 0.8
            : constraints.maxWidth;

        final horizantalPadding = (constraints.maxWidth - maxWidth) / 2 + pageHorizontalPadding;

        return ListView.separated(
          padding: EdgeInsets.fromLTRB(
            horizantalPadding,
            verticalSpace,
            horizantalPadding,
            verticalSpace,
          ),
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
              context: context,
            );
          },
          separatorBuilder: (context, index) => _TravelCard(tripStop: tripStops[index]),
        );
      },
    );
  }
}
