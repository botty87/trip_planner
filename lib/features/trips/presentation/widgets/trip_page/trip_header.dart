part of '../../pages/trip_page.dart';

class _TripHeader extends StatelessWidget {
  const _TripHeader();

  @override
  Widget build(BuildContext context) {
    final trip = context.read<TripCubit>().state.trip;

    return Text(
      trip.description ?? '',
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.justify,
    );
  }
}

