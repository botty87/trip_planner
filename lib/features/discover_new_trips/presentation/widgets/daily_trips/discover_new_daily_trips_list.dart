part of '../../pages/discover_new_daily_trips_page.dart';

class _DiscoverNewDailyTripList extends StatelessWidget {
  final Trip _trip;

  const _DiscoverNewDailyTripList({
    required Trip trip,
  }) : _trip = trip;

  @override
  Widget build(BuildContext context) {
    final dayTrips = context.select((DiscoverNewDailyTripsCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.dayTrips,
          orElse: () => throw Exception('Unexpected state'),
        ));

    if (dayTrips.isEmpty) {
      return SliverToBoxAdapter(
        child: BackgroundWidgetContainer(
          child: Center(
            child: Text(
              LocaleKeys.noDayTripsFound.tr(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.only(bottom: pageVerticalPadding),
      sliver: SliverList.separated(
        itemCount: dayTrips.length,
        itemBuilder: (context, index) => _DayTripCard(
          key: ValueKey(dayTrips[index].id),
          trip: _trip,
          dayTrip: dayTrips[index],
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: verticalSpace),
      ),
    );
  }
}
