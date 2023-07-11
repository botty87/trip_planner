part of '../../pages/trip_page.dart';

class _DayTripsList extends StatelessWidget {
  const _DayTripsList();

  @override
  Widget build(BuildContext context) {
    final dayTrips = context.select((TripCubit cubit) => cubit.state.dayTrips);

    return Padding(
      padding: dayTrips.isNotEmpty ? const EdgeInsets.only(top: VERTICAL_SPACE_L) : EdgeInsets.zero,
      child: SeparatedColumn(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: VERTICAL_SPACE_S),
        children: [
          ...dayTrips.map((dayTrip) => _DayTripCard(dayTrip: dayTrip)),
        ],
      ),
    );
  }
}
