part of '../../pages/trip_page.dart';

final class _AddDayTripCard extends AddDestinationCard {
  const _AddDayTripCard();

  @override
  String get assetName => Assets.svg.addDayTripSvg;

  @override
  String get title => LocaleKeys.addDayTrip.tr();

  @override
  void Function(BuildContext context) get onTap {
    return (BuildContext context) {
      context.router.push(NewDayTripRoute(tripId: context.read<TripCubit>().state.trip.id));
    };
  }

  @override
  Color get color => Colors.amberAccent[100]!;
}
