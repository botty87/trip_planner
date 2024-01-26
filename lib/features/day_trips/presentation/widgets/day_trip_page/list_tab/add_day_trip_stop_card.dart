part of '../../../pages/day_trip_page.dart';

final class _AddDayTripStopCard extends StatelessWidget {
  const _AddDayTripStopCard();

  @override
  Widget build(BuildContext context) {
    return AddDestinationCard(
      assetName: Assets.svg.destinationSvg,
      title: LocaleKeys.addDestination.tr(),
      color: Colors.amberAccent[100]!,
      onTap: () {
        final dayTripState = context.read<DayTripCubit>().state;

        context.router.push(NewTripStopRoute(
          trip: dayTripState.trip.id,
          dayTrip: dayTripState.dayTrip.id,
        ));
      },
    );
  }
}
