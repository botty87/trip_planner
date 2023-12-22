part of '../../../pages/day_trip_page.dart';

class _MapMarkersFinder extends StatelessWidget {
  const _MapMarkersFinder();

  @override
  Widget build(BuildContext context) {
    final isMarkerLatLngBoundsEmpty =
        context.select((TripStopsMapCubit cubit) => cubit.state.markerLatLngBounds == null);

    if (isMarkerLatLngBoundsEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton.filled(
        icon: const Icon(Icons.place, color: Colors.white),
        onPressed: () {
          final cubit = context.read<TripStopsMapCubit>();
          cubit.mapController
              ?.animateCamera(CameraUpdate.newLatLngBounds(cubit.state.markerLatLngBounds!, 50));
        },
      ),
    );
  }
}
