part of '../../../pages/day_trip_page.dart';

class _MapMarkersFinder extends HookWidget {
  const _MapMarkersFinder();

  @override
  Widget build(BuildContext context) {
    final isMarkerLatLngBoundsEmptyStreamController = useStreamController<bool>();

    //TODO refactor
    return Placeholder();

    /* return BlocListener<TripStopsMapCubit, TripStopsMapState>(
      listener: (context, state) =>
          isMarkerLatLngBoundsEmptyStreamController.add(state.markerLatLngBounds == null),
      listenWhen: (previous, current) => previous.isMapReady != current.isMapReady,
      child: BlocBuilder<TripStopsMapCubit, TripStopsMapState>(
        builder: (context, state) {
          return DefaultMapMarkersFinder(
            isMarkerLatLngBoundsEmpty: isMarkerLatLngBoundsEmptyStreamController.stream,
            initialIsMarkerLatLngBoundsEmpty: state.markerLatLngBounds == null,
            onTap: () {
              final cubit = context.read<TripStopsMapCubit>();
              cubit.mapController?.animateCamera(
                  CameraUpdate.newLatLngBounds(cubit.state.markerLatLngBounds!, 50));
            },
          );
        },
      ),
    ); */
  }
}
