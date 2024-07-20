part of '../../pages/discover_new_daily_trips_page.dart';

class _LoadedWidget extends StatelessWidget {
  final Trip _trip;
  const _LoadedWidget({required Trip trip}) : _trip = trip;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxListViewWidth),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
                padding: const EdgeInsets.only(
                    top: pageVerticalPadding, left: pageHorizontalPadding, right: pageHorizontalPadding),
                sliver: SliverToBoxAdapter(child: _DailyTripsHeader(description: _trip.description))),
            if (_trip.description?.isNotEmpty ?? false)
              const SliverToBoxAdapter(child: SizedBox(height: verticalSpaceL)),
            _DiscoverNewDailyTripList(trip: _trip),
          ],
        ),
      ),
    );
  }
}
