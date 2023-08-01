part of '../../pages/day_trip_page.dart';

final class _AddDayTripStopCard extends AddDestinationCard {
  const _AddDayTripStopCard();

  @override
  String get assetName => Assets.svg.addDayTripSvg;

  @override
  String get title => LocaleKeys.addDayTrip.tr();

  @override
  void Function(BuildContext context) get onTap {
    return (BuildContext context) {
      //TODO: Implement onTap
    };
  }
}
