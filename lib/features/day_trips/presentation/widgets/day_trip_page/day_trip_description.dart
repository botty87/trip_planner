part of '../../pages/day_trip_page.dart';

class _DayTripDescription extends StatelessWidget {
  const _DayTripDescription();

  @override
  Widget build(BuildContext context) {
    final dayTrip = context.read<DayTripCubit>().state.dayTrip;

    if (dayTrip.description != null) {
      return Padding(
        padding: const EdgeInsets.only(bottom: VERTICAL_SPACE_S),
        child: Text(
          dayTrip.description!,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.justify,
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}