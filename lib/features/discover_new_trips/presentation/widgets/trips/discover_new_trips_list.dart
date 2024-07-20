part of '../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripList extends StatelessWidget {
  const _DiscoverNewTripList();

  @override
  Widget build(BuildContext context) {
    final filteredTrips = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.filteredTrips,
          orElse: () => <Trip>[],
        ));

    if (filteredTrips.isEmpty) {
      return const SliverToBoxAdapter(child: _NoTripsWidget());
    }

    return SliverPadding(
      padding: const EdgeInsets.only(bottom: pageVerticalPadding),
      sliver: SliverList.separated(
        itemCount: filteredTrips.length,
        itemBuilder: (context, index) => _TripCard(
          key: ValueKey(filteredTrips[index].id),
          trip: filteredTrips[index],
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: verticalSpace),
      ),
    );
  }
}
