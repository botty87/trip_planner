part of '../../pages/day_trip_page.dart';

final class _AddDayTripStopCard extends AddDestinationCard {
  const _AddDayTripStopCard();

  @override
  String get assetName => Assets.svg.destinationSvg;

  @override
  String get title => LocaleKeys.addDestination.tr();

  @override
  void Function(BuildContext context) get onTap {
    return (BuildContext context) {
      final dayTripState = context.read<DayTripCubit>().state;

      context.router.push(NewTripStopRoute(
        trip: dayTripState.trip.id,
        dayTrip: dayTripState.dayTrip.id,
      ));
    };
  }

  @override
  Color get color => Colors.green[100]!;
}
