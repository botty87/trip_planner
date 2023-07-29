part of '../../pages/trip_page.dart';

class _TripHeader extends StatelessWidget {
  const _TripHeader();

  @override
  Widget build(BuildContext context) {
    final trip = context.read<TripCubit>().state.trip;

    if (trip.description != null) {
      return Padding(
        padding: const EdgeInsets.only(bottom: VERTICAL_SPACE_S),
        child: Text(
          trip.description ?? '',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.justify,
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
