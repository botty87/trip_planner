part of '../../../pages/discover_new_trip_stops_page.dart';

class _MapMarkersFinder extends HookWidget {
  const _MapMarkersFinder();

  @override
  Widget build(BuildContext context) {
    final isMarkerLatLngBoundsEmptyStreamController = useStreamController<bool>();

    return BlocListener<DiscoverNewTripStopsCubit, DiscoverNewTripStopsState>(
      listener: (context, state) {
        state.mapOrNull(
          loaded: (state) {
            final isMarkerLatLngBoundsEmpty = state.markerLatLngBounds == null;
            isMarkerLatLngBoundsEmptyStreamController.add(isMarkerLatLngBoundsEmpty);
          },
        );
      },
      listenWhen: (previous, current) {
        final previousMarkerLatLngBounds =
            previous.mapOrNull(loaded: (state) => state.markerLatLngBounds);
        final currentMarkerLatLngBounds =
            current.mapOrNull(loaded: (state) => state.markerLatLngBounds);
        return previousMarkerLatLngBounds != currentMarkerLatLngBounds;
      },
      child: DefaultMapMarkersFinder(
          isMarkerLatLngBoundsEmpty: isMarkerLatLngBoundsEmptyStreamController.stream,
          initialIsMarkerLatLngBoundsEmpty: context
                  .read<DiscoverNewTripStopsCubit>()
                  .state
                  .mapOrNull(loaded: (state) => state.markerLatLngBounds) ==
              null,
          onTap: () {
            final cubit = context.read<DiscoverNewTripStopsCubit>();
            final markerLatLngBounds = cubit.state.mapOrNull(
              loaded: (state) => state.markerLatLngBounds,
            )!;
            cubit.mapController
                ?.animateCamera(CameraUpdate.newLatLngBounds(markerLatLngBounds, 50));
          }),
    );
  }
}
