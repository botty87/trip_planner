part of '../../../pages/day_trip_page.dart';

class _MapZoomButtons extends StatelessWidget {
  const _MapZoomButtons();

  @override
  Widget build(BuildContext context) {
    return DefaultMapZoomButtons(
      onZoomInPressed: () =>
          context.read<TripStopsMapCubit>().mapController?.animateCamera(CameraUpdate.zoomIn()),
      onZoomOutPressed: () =>
          context.read<TripStopsMapCubit>().mapController?.animateCamera(CameraUpdate.zoomOut()),
    );
  }
}
