part of '../../../pages/day_trip_page.dart';

class _MapZoomButtons extends StatelessWidget {
  const _MapZoomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TripStopsMapCubit>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
            icon: const Icon(Icons.remove, color: Colors.white),
            onPressed: () => cubit.mapController?.animateCamera(CameraUpdate.zoomOut()),
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () => cubit.mapController?.animateCamera(CameraUpdate.zoomIn()),
          ),
        ],
      ),
    );
  }
}