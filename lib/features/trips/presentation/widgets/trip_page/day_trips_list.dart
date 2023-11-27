part of '../../pages/trip_page.dart';

class _DayTripsList extends StatelessWidget {
  const _DayTripsList();

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((TripCubit cubit) => cubit.state is TripStateLoading);

    return AnimatedSize(
        duration: const Duration(milliseconds: 500),
        child: isLoading ? const SizedBox.shrink() : _list(context));
  }

  Widget _list(BuildContext context) {
    return BlocSelector<TripCubit, TripState, List<DayTrip>>(
      selector: (state) {
        return state.dayTrips;
      },
      builder: (context, dayTrips) {
        final cubit = context.read<TripCubit>();
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
                tripStartDate: cubit.state.trip.startDate,
                context: context,
              ),
            );
          },
          onReorder: (oldIndex, newIndex) {
            context.read<TripCubit>().reorderDayTrips(oldIndex, newIndex);
          },
        );
      },
    );
  }
}
