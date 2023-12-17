part of '../../pages/day_trip_page.dart';

class _MapViewWidget extends HookWidget {
  const _MapViewWidget();

  static const CameraPosition _worldPosition = CameraPosition(
    target: LatLng(0, 0),
    zoom: 0,
  );

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    final googleMapController = useRef<GoogleMapController?>(null);

    final isMapReady = useState<bool>(false);
    
    final tripStops = context.select((DayTripCubit cubit) => cubit.state.tripStops);
    final List<TripStopsDirections>? tripStopsDirections =
        context.select((TripStopsMapCubit cubit) => cubit.state.tripStopsDirections);

    final polylinePointsTripStopsLoaded = useRef<bool>(tripStopsDirections?.isNotEmpty ?? false);

    if (!polylinePointsTripStopsLoaded.value) {
      context.read<TripStopsMapCubit>().loadDirections(tripStops);
      polylinePointsTripStopsLoaded.value = true;
    }

    Set<Polyline> createPolyline() {
      final Set<Polyline> polylines = {};

      if (tripStopsDirections != null && isMapReady.value) {
        const colors = [
          Colors.red,
          Colors.green,
          Colors.blue,
          Colors.yellow,
          Colors.purple,
          Colors.orange,
          Colors.brown,
        ];
        int colorIndex = Random().nextInt(colors.length);

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

            if (colorIndex >= colors.length - 1) {
              colorIndex = 0;
            } else {
              colorIndex++;
            }
          }
        }
      }
      return polylines;
    }

    final markers = tripStops
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

    final LatLngBounds? markerLatLngBounds = markers.isNotEmpty
        ? LatLngBoundsExtension.fromLatLngList(markers.map((e) => e.position).toList())
        : null;

    return Stack(
      children: [
        Visibility(
          visible: !isMapReady.value,
          child: const Center(child: CircularProgressIndicator.adaptive()),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: isMapReady.value ? 1 : 0,
          child: Stack(
            children: [
              BlocSelector<TripStopsMapCubit, TripStopsMapState, MapType>(
                selector: (state) {
                  return state.mapType;
                },
                builder: (context, mapType) {
                  return GoogleMap(
                    mapType: mapType,
                    initialCameraPosition: _worldPosition,
                    onMapCreated: (controller) {
                      googleMapController.value = controller;
                      isMapReady.value = true;
                      if (markerLatLngBounds != null) {
                        controller.moveCamera(CameraUpdate.newLatLngBounds(markerLatLngBounds, 50));
                      }
                    },
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    markers: markers,
                    polylines: createPolyline(),
                  );
                },
              ),
              Align(
                alignment: Alignment.topLeft,
                child: _mapTypeChanger(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: _zoomControls(googleMapController),
              ),
              if (markerLatLngBounds != null)
                Align(
                  alignment: Alignment.topRight,
                  child: _markersFinder(markerLatLngBounds, googleMapController),
                ),
            ],
          ),
        )
      ],
    );
  }

  Widget _zoomControls(ObjectRef<GoogleMapController?> controller) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
            icon: const Icon(Icons.remove, color: Colors.white),
            onPressed: () => controller.value?.animateCamera(CameraUpdate.zoomOut()),
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () => controller.value?.animateCamera(CameraUpdate.zoomIn()),
          ),
        ],
      ),
    );
  }

  Widget _mapTypeChanger() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocSelector<TripStopsMapCubit, TripStopsMapState, MapType>(
        selector: (state) {
          return state.mapType;
        },
        builder: (context, mapType) {
          return IconButton.filled(
            icon: Icon(
              mapType != MapType.hybrid ? Icons.map : Icons.map_outlined,
              color: Colors.white,
            ),
            onPressed: () => context.read<TripStopsMapCubit>().changeMapType(),
          );
        },
      ),
    );
  }

  Widget _markersFinder(
      LatLngBounds markerLatLngBounds, ObjectRef<GoogleMapController?> controller) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton.filled(
        icon: const Icon(Icons.place, color: Colors.white),
        onPressed: () =>
            controller.value?.animateCamera(CameraUpdate.newLatLngBounds(markerLatLngBounds, 50)),
      ),
    );
  }
}
