part of '../../pages/day_trip_page.dart';

class _TripStopsList extends StatelessWidget {
  const _TripStopsList();

  @override
  Widget build(BuildContext context) {
    final tripStops = context.select((DayTripCubit cubit) => cubit.state.tripStops);

    return ReorderableListView.builder(
      header: BlocSelector<DayTripCubit, DayTripState, String?>(
        selector: (state) => state.dayTrip.description,
        builder: (context, description) => _DayTripHeader(headerText: description),
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tripStops.length,
      itemBuilder: (context, index) {
        final tripStop = tripStops[index];
        return Padding(
          key: ValueKey(tripStop.id),
          padding: const EdgeInsets.only(bottom: VERTICAL_SPACE_XS),
          child: _TripStopCard(
            tripStop: tripStop,
            tripStartDate: DateTime.now(),
            context: context,
          ),
        );
      },
      proxyDecorator: (child, index, animation) {
        return TransparentListDecorator(
          child: child,
          index: index,
          animation: animation,
        );
      },
      onReorder: (int oldIndex, int newIndex) {},
    );
  }
}
