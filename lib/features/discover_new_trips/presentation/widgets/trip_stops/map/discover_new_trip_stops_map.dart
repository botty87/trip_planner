part of '../../../pages/discover_new_trip_stops_page.dart';

class _DiscoverNewTripStopsMap extends StatelessWidget with MapViewMixin {
  const _DiscoverNewTripStopsMap();

  static const CameraPosition _worldPosition = CameraPosition(
    target: LatLng(0, 0),
    zoom: 0,
  );

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DiscoverNewTripStopsCubit>();

    final mapType = context.select((DiscoverNewTripStopsCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.mapType,
          orElse: () => throw Exception('Unexpected state'),
        ));

    final tripStops = context.select((DiscoverNewTripStopsCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.tripStops,
          orElse: () => throw Exception('Unexpected state'),
        ));

    final markers = getMarkers(
      context: context,
      tripStops: tripStops,
      onMarkerTap: (tripStop) {
        //TODO: implement
        /* final state = context.read<DiscoverNewTripStopsCubit>().state;
        context.router
            .push(TripStopRoute(trip: state.trip, dayTrip: state.dayTrip, tripStop: tripStop)); */
      },
      useDifferentColorsForDone: false,
    );

    final LatLngBounds? markerLatLngBounds = getLatLngBounds(markers: markers);
    cubit.updateMarkerLatLngBounds(markerLatLngBounds);

    return GoogleMap(
      mapType: mapType,
      initialCameraPosition: _worldPosition,
      onMapCreated: (controller) {
        cubit.mapController = controller;
        if (markerLatLngBounds != null) {
          controller.moveCamera(CameraUpdate.newLatLngBounds(markerLatLngBounds, 50));
        }
        cubit.setMapReady();
      },
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      markers: markers,
    );
  }
}
