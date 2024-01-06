part of '../../../pages/day_trip_page.dart';

class _MapWidget extends StatelessWidget {
  const _MapWidget();

  static const CameraPosition _worldPosition = CameraPosition(
    target: LatLng(0, 0),
    zoom: 0,
  );

  @override
  Widget build(BuildContext context) {
    final mapType = context.select((TripStopsMapCubit cubit) => cubit.state.mapType);
    final cubit = context.read<TripStopsMapCubit>();

    final polylines = _getPolylines(context);
    final markers = _getMarkers(context);

    final LatLngBounds? markerLatLngBounds = _getLatLngBounds(markers);
    cubit.updateMarkerLatLngBounds(markerLatLngBounds);

    if (markerLatLngBounds != null) {
      cubit.mapController?.moveCamera(CameraUpdate.newLatLngBounds(markerLatLngBounds, 50));
    }

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
      polylines: polylines,
    );
  }

  LatLngBounds? _getLatLngBounds(Set<Marker> markers) {
    return markers.isNotEmpty
        ? LatLngBoundsExtension.fromLatLngList(markers.map((e) => e.position).toList())
        : null;
  }

  Set<Marker> _getMarkers(BuildContext context) {
    final tripStops = context.select((DayTripCubit cubit) => cubit.state.tripStops);

    return tripStops
        .map(
          (stop) => Marker(
            markerId: MarkerId(stop.id),
            position: stop.location,
            infoWindow: InfoWindow(
              title: stop.name,
              snippet: stop.description,
              onTap: () {
                final state = context.read<DayTripCubit>().state;
                context.router
                    .push(TripStopRoute(trip: state.trip, dayTrip: state.dayTrip, tripStop: stop));
              },
            ),
            icon: stop.isDone
                ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
                : BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          ),
        )
        .toSet();
  }

  Set<Polyline> _getPolylines(BuildContext context) {
    final Set<Polyline> polylines = {};

    final showDirections = context.select((TripStopsMapCubit cubit) => cubit.state.dayTrip.showDirections);
    final tripStopsDirectionsUpToDate = context
        .select((TripStopsMapCubit cubit) => cubit.state.dayTrip.tripStopsDirectionsUpToDate);

    if (!showDirections || !tripStopsDirectionsUpToDate) {
      return polylines;
    }

    final isMapReady = context.select((TripStopsMapCubit cubit) => cubit.state.isMapReady);
    final List<TripStopsDirections>? tripStopsDirections =
        context.select((TripStopsMapCubit cubit) => cubit.state.dayTrip.tripStopsDirections);

    final useDifferentColors =
        context.select((TripStopsMapCubit cubit) => cubit.state.dayTrip.useDifferentDirectionsColors);

    if (tripStopsDirections != null && isMapReady) {
      final List<MaterialColor> colors;
      int colorIndex;
      if (useDifferentColors) {
        colors = [
          Colors.red,
          Colors.green,
          Colors.blue,
          Colors.yellow,
          Colors.purple,
          Colors.orange,
        ];
        colorIndex = Random().nextInt(colors.length);
      } else {
        colors = [Colors.blue];
        colorIndex = 0;
      }

      for (final directions in tripStopsDirections) {
        if (directions.points?.isNotEmpty ?? false) {
          polylines.add(
            Polyline(
              polylineId: PolylineId(directions.originId + directions.destinationId),
              points: directions.points!,
              color: colors[colorIndex],
              width: 5,
            ),
          );

          if (useDifferentColors) {
            if (colorIndex >= colors.length - 1) {
              colorIndex = 0;
            } else {
              colorIndex++;
            }
          }
        }
      }
    }

    return polylines;
  }
}
