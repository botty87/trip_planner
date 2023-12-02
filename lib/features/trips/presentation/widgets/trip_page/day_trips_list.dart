part of '../../pages/trip_page.dart';

class _DayTripsList extends StatelessWidget {
  const _DayTripsList();

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((TripCubit cubit) => cubit.state is TripStateLoading);

    return AnimatedSize(
        duration: const Duration(milliseconds: 400),
        child: isLoading ? const SizedBox.shrink() : _List());
  }
}

class _List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dayTrips = context.select((TripCubit cubit) => cubit.state.dayTrips);
    final tripStartDate = context.select((TripCubit cubit) => cubit.state.trip.startDate);

    return ReorderableListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dayTrips.length,
      proxyDecorator: (child, index, animation) {
        return TransparentListDecorator(
          index: index,
          animation: animation,
          child: child,
        );
      },
      itemBuilder: (context, index) {
        final dayTrip = dayTrips[index];
        return Padding(
          key: ValueKey(dayTrip.id),
          padding: const EdgeInsets.only(bottom: verticalSpaceXs),
          child: _DayTripCard(
            dayTrip: dayTrip,
            tripStartDate: tripStartDate,
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
