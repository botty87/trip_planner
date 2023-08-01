part of '../../pages/day_trip_page.dart';

class _TripStopsList extends StatelessWidget {
  const _TripStopsList();

  @override
  Widget build(BuildContext context) {
    final tripStops = context.select((DayTripCubit cubit) => cubit.state.tripStops);

    return ReorderableListView.builder(
      header: _DayTripHeader(),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tripStops.length,
      proxyDecorator: (child, index, animation) {
        return TransparentListDecorator(
          child: child,
          index: index,
          animation: animation,
        );
      },
      itemBuilder: (context, index) {
        return Placeholder(
          key: ValueKey(index),
        );
        /* final dayTrip = dayTrips[index];
        return Padding(
          key: ValueKey(dayTrip.id),
          padding: const EdgeInsets.only(bottom: VERTICAL_SPACE_XS),
          child: _DayTripCard(dayTrip: dayTrip, tripStartDate: cubit.state.trip.startDate),
        ); */
      },
      onReorder: (oldIndex, newIndex) {},
    );
  }
}
