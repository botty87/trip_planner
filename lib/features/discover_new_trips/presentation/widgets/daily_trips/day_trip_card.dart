part of '../../pages/discover_new_daily_trips_page.dart';

final class _DayTripCard extends GenericTripCard {
  final DayTrip dayTrip;
  final BuildContext context;

  const _DayTripCard({required this.dayTrip, required this.context});

  @override
  String get name => "${LocaleKeys.day.tr()} ${dayTrip.index + 1}";

  @override
  String? get date => null;

  @override
  String? get description => dayTrip.description;

  @override
  VoidCallback get onTap => () {};

  @override
  Color? get color => null;
}
