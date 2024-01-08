part of '../../pages/discover_new_daily_trips_page.dart';

class _DiscoverNewDailyTripList extends StatelessWidget {
  const _DiscoverNewDailyTripList();

  @override
  Widget build(BuildContext context) {
    final dayTrips = context.select((DiscoverNewDailyTripsCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.dayTrips,
          orElse: () => throw Exception('Unexpected state'),
        ));

    if (dayTrips.isEmpty) return Center(child: Text(LocaleKeys.noDayTripsFound.tr()));

    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
          ? constraints.maxWidth * 0.8
          : constraints.maxWidth;

      return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(
              horizontalSpace, verticalSpace, horizontalSpace, verticalSpace),
          itemCount: dayTrips.length,
          itemBuilder: (context, index) => _DayTripCard(
            dayTrip: dayTrips[index],
            context: context,
          ),
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: verticalSpace),
        ),
      );
    });
  }
}
