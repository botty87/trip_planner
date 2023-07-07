part of '../../pages/trip_page.dart';

class _DayTripsList extends StatelessWidget {
  const _DayTripsList();

  @override
  Widget build(BuildContext context) {
    final dayTrips = context.select((TripCubit cubit) => cubit.state.dayTrips);

    return Padding(
      padding: dayTrips.isNotEmpty ? const EdgeInsets.only(top: VERTICAL_SPACE_L) : EdgeInsets.zero,
      child: Column(
        children: [
          if (dayTrips.isNotEmpty) ...[
            //TODO: Add DayTripsList
          ],
        ],
      ),
    );
  }
}
