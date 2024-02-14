part of '../../pages/discover_new_trip_stop_page.dart';

class _TripStopDurationWidget extends StatelessWidget {
  const _TripStopDurationWidget();

  @override
  Widget build(BuildContext context) {
    final durationInMinutes = context.read<DiscoverNewTripStopCubit>().state.tripStop.duration;

    return BackgroundWidgetContainer(
        child: GenericDurationWidget(durationInMinutes: durationInMinutes));
  }
}
