part of '../../../pages/discover_new_trip_stops_page.dart';

class _MapZoomButtons extends StatelessWidget {
  const _MapZoomButtons();

  @override
  Widget build(BuildContext context) {
    return DefaultMapZoomButtons(
      onZoomInPressed: () {
        context
            .read<DiscoverNewTripStopsCubit>()
            .mapController
            ?.animateCamera(CameraUpdate.zoomIn());
      },
      onZoomOutPressed: () {
        context
            .read<DiscoverNewTripStopsCubit>()
            .mapController
            ?.animateCamera(CameraUpdate.zoomOut());
      },
    );
  }
}
