part of '../../pages/day_trip_page.dart';

class _TripStopsList extends StatelessWidget {
  const _TripStopsList();

  @override
  Widget build(BuildContext context) {
    final tripStops = context.select((DayTripCubit cubit) => cubit.state.tripStops);
    final DateTime dayTripStartDateTime = context.select((DayTripCubit cubit) {
      final startDate = cubit.state.trip.startDate;
      final startTime = cubit.state.dayTrip.startTime;
      return DateTime(startDate.year, startDate.month, startDate.day, startTime.hour, startTime.minute);
    });

    int previousTripStopsMinutedDuration = 0;

    return ReorderableListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tripStops.length,
      itemBuilder: (context, index) {
        final tripStop = tripStops[index];
        final widget = Padding(
          key: ValueKey(tripStop.id),
          padding: const EdgeInsets.only(bottom: verticalSpaceXs),
          child: _TripStopCard(
            tripStop: tripStop,
            tripStartDate: dayTripStartDateTime,
            context: context,
            previousTripStopsMinutedDuration: previousTripStopsMinutedDuration,
          ),
        );
        previousTripStopsMinutedDuration += tripStop.duration;
        return widget;
      },
      proxyDecorator: (child, index, animation) {
        return TransparentListDecorator(
          index: index,
          animation: animation,
          child: child,
        );
      },
      onReorder: (int oldIndex, int newIndex) {},
    );
  }
}
