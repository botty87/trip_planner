part of '../../pages/day_trip_page.dart';

class _DayTripHeader extends StatelessWidget {
  const _DayTripHeader();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DayTripCubit>();
    final trip = cubit.state.trip;
    final dayTrip = cubit.state.dayTrip;
    final dayDate = trip.startDate.add(Duration(days: dayTrip.index));

    return Padding(
      padding: const EdgeInsets.only(bottom: VERTICAL_SPACE_S),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _DayDateWidget(date: dayDate),
          SizedBox(height: VERTICAL_SPACE_S),
          _DayTripDescription(),
        ],
      ),
    );
  }
}
