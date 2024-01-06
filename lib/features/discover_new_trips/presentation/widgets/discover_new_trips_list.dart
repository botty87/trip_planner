part of '../pages/discover_new_trips_page.dart';

class _DiscoverNewTripList extends StatelessWidget {
  const _DiscoverNewTripList();

  @override
  Widget build(BuildContext context) {
    final filteredTrips = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.filteredTrips,
          orElse: () => [],
        ));

    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
          ? constraints.maxWidth * 0.8
          : constraints.maxWidth;

      return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: ListView.separated(
          padding: defaultPagePadding,
          itemCount: filteredTrips.length,
          itemBuilder: (context, index) => _TripCard(trip: filteredTrips[index]),
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: verticalSpace),
        ),
      );
    });
  }
}
