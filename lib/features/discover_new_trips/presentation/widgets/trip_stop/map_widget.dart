part of '../../pages/discover_new_trip_stop_page.dart';

class _MapWidget extends StatelessWidget {
  const _MapWidget();

  @override
  Widget build(BuildContext context) {
    final tripStop = context.read<DiscoverNewTripStopCubit>().state.tripStop;

    return MapWidget.single(
      mapPlace: tripStop.toMapPlace(),
      useDifferentColorsForDone: false,
      showInfoWindow: false,
    );
  }
}
