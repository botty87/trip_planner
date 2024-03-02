part of '../../pages/discover_new_trips_page.dart';

class _DiscoverNewTripList extends StatelessWidget {
  const _DiscoverNewTripList();

  @override
  Widget build(BuildContext context) {
    final filteredTrips = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.filteredTrips,
          orElse: () => <Trip>[],
        ));

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _buildChild(filteredTrips),
    );
  }

  Widget _buildChild(List<Trip> filteredTrips) {
    if (filteredTrips.isEmpty) {
      return const _NoTripsWidget();
    }

    return ListView.separated(
      shrinkWrap: true,
      itemCount: filteredTrips.length,
      itemBuilder: (context, index) => _TripCard(trip: filteredTrips[index]),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: verticalSpace),
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
