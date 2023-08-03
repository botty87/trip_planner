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
      //TODO: Implement onTap
    };
  }

  @override
  Color get color => Colors.green[100]!;
}
