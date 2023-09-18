part of '../../pages/trip_page.dart';

class _DayTripsList extends StatelessWidget {
  const _DayTripsList();

  @override
  Widget build(BuildContext context) {
    final dayTrips = context.select((TripCubit cubit) => cubit.state.dayTrips);
    final cubit = context.read<TripCubit>();

    return ReorderableListView.builder(
      header: _TripHeader(),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dayTrips.length,
      proxyDecorator: (child, index, animation) {
        return TransparentListDecorator(
          child: child,
          index: index,
          animation: animation,
        );
      },
      itemBuilder: (context, index) {
        final dayTrip = dayTrips[index];
        return Padding(
          key: ValueKey(dayTrip.id),
          padding: const EdgeInsets.only(bottom: VERTICAL_SPACE_XS),
          child: _DayTripCard(
            dayTrip: dayTrip,
            tripStartDate: cubit.state.trip.startDate,
            context: context,
          ),
        );
      },
      onReorder: (oldIndex, newIndex) {
        context.read<TripCubit>().reorderDayTrips(oldIndex, newIndex);
      },
    );
  }
}
