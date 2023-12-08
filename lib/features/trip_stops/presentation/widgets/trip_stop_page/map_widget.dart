part of '../../pages/trip_stop_page.dart';

class _MapWidget extends HookWidget {
  const _MapWidget();

  @override
  Widget build(BuildContext context) {
    final locationStream = useStreamController<LatLng>();

    return BlocListener<TripStopCubit, TripStopState>(
      listenWhen: (previous, current) => previous.tripStop.location != current.tripStop.location,
      listener: (context, state) => locationStream.add(state.tripStop.location),
      child: MapWidget(
        locationStream: locationStream.stream,
        initialLocation: context.read<TripStopCubit>().state.tripStop.location,
      ),
    );
  }
}
