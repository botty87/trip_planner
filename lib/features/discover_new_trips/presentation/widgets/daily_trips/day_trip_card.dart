part of '../../pages/discover_new_daily_trips_page.dart';

final class _DayTripCard extends StatelessWidget {
  final Trip trip;
  final DayTrip dayTrip;

  const _DayTripCard({required this.dayTrip, required this.trip});

  @override
  Widget build(BuildContext context) {
    return GenericTripCard(
      name: "${LocaleKeys.day.tr()} ${dayTrip.index + 1}",
      description: dayTrip.description,
      onTap: () => context.router.push(DiscoverNewTripStopsRoute(dayTrip: dayTrip, trip: trip)),
    );
  }
}
