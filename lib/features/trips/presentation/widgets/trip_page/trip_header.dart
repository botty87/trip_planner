part of '../../pages/trip_page.dart';

class _TripHeader extends StatelessWidget {
  const _TripHeader();

  @override
  Widget build(BuildContext context) {
    final tripDescription =
        context.select<TripCubit, String?>((cubit) => cubit.state.trip.description);

    return tripDescription != null
        ? Padding(
            padding: const EdgeInsets.only(bottom: VERTICAL_SPACE_S),
            child: Text(
              tripDescription,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          )
        : SizedBox.shrink();
  }
}
