part of '../../pages/trips_page.dart';

class _BodyWidget extends StatelessWidget {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select<TripsCubit, bool>((cubit) => cubit.state.isLoading);

    if (isLoading) {
      return const CircularProgressIndicator.adaptive();
    }

    final areTripsEmpty = context.select<TripsCubit, bool>((cubit) => cubit.state.trips.isEmpty);
    return areTripsEmpty ? const NoTripsWidget() : const TripsListWidget();
  }
}
