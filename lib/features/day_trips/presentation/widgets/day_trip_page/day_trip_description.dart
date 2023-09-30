part of '../../pages/day_trip_page.dart';

class _DayTripDescription extends StatelessWidget {
  const _DayTripDescription();

  @override
  Widget build(BuildContext context) {
    final dayTripDescritption =
        context.select((DayTripCubit cubit) => cubit.state.dayTrip.description);

    if (dayTripDescritption != null) {
      return Padding(
        padding: const EdgeInsets.only(bottom: verticalSpaceS),
        child: Text(
          dayTripDescritption,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.justify,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
