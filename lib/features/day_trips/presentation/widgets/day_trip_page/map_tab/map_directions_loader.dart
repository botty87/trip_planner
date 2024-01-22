part of '../../../pages/day_trip_page.dart';

class _MapDirectionsLoader extends StatelessWidget {
  const _MapDirectionsLoader();

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((TripStopsMapCubit cubit) => cubit.state.isLoading);
    if (isLoading) {
      return const LinearProgressIndicator();
    }
    return const SizedBox.shrink();
  }
}
