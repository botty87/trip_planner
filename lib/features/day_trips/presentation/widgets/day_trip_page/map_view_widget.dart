part of '../../pages/day_trip_page.dart';

class _MapViewWidget extends HookWidget {
  const _MapViewWidget();

  static const CameraPosition _worldPosition = CameraPosition(
    target: LatLng(0, 0),
    zoom: 0,
  );

  @override
  Widget build(BuildContext context) {
    final googleMapController = useRef<GoogleMapController?>(null);
    final isMapReady = useState<bool>(false);
    final tripStops = context.select((DayTripCubit cubit) => cubit.state.tripStops);

    final state = context.read<TripStopsMapCubit>().state;

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
          ),
        )
        .toSet();

    final LatLngBounds? markerLatLngBounds = markers.isNotEmpty
        ? LatLngBoundsExtension.fromLatLngList(markers.map((e) => e.position).toList())
        : null;

    final initialCameraPosition = state.currentCameraPosition ?? _worldPosition;

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
                    initialCameraPosition: initialCameraPosition,
                    onMapCreated: (controller) {
                      googleMapController.value = controller;
                      isMapReady.value = true;
                      if (markerLatLngBounds != null && state.currentCameraPosition == null) {
                        controller.moveCamera(CameraUpdate.newLatLngBounds(markerLatLngBounds, 50));
                      }
                    },
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    markers: markers,
                    onCameraMove: (position) =>
                        context.read<TripStopsMapCubit>().cameraPositionChanged(position),
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
