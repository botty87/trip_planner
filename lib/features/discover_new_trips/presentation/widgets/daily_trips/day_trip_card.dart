part of '../../pages/discover_new_daily_trips_page.dart';

final class _DayTripCard extends GenericTripCard {
  final Trip trip;
  final DayTrip dayTrip;
  final BuildContext context;

  const _DayTripCard({required this.dayTrip, required this.context, required this.trip});

  @override
  String get name => "${LocaleKeys.day.tr()} ${dayTrip.index + 1}";

  @override
  String? get date => null;

  @override
  String? get description => dayTrip.description;

  @override
  VoidCallback get onTap =>
      () => context.router.push(DiscoverNewTripStopsRoute(dayTrip: dayTrip, trip: trip));

  @override
  Color? get color => null;
}
