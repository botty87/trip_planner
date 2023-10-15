part of '../../pages/trip_page.dart';

final class _DayTripCard extends GenericTripCard {
  final DayTrip dayTrip;
  final DateTime tripStartDate;
  final BuildContext context;

  const _DayTripCard({required this.dayTrip, required this.tripStartDate, required this.context});

  @override
  String get name => "${LocaleKeys.day.tr()} ${dayTrip.index + 1}";

  @override
  String get date => DateFormat.yMMMMd().format(tripStartDate.add(Duration(days: dayTrip.index)));

  @override
  String? get description => dayTrip.description;

  @override
  VoidCallback get onTap => () => context.router
      .push(DayTripRoute(trip: context.read<TripCubit>().state.trip, dayTrip: dayTrip));
}
