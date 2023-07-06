part of '../../pages/trip_page.dart';

class _DayTripsList extends StatelessWidget {
  const _DayTripsList();

  @override
  Widget build(BuildContext context) {
    final dayTrips = context.select((TripCubit cubit) => cubit.state.dayTrips);
    if (dayTrips.isEmpty) {
      return const _AddDayTripCard();
    } else {
      return ListView.builder(
        itemCount: dayTrips.length,
        itemBuilder: (context, index) {
          final dayTrip = dayTrips[index];
          return _DayTripCard(key: ValueKey(dayTrip.id), dayTrip: dayTrip);
        },
      );
    }
  }
}
