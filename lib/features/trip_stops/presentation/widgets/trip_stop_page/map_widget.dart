part of '../../pages/trip_stop_page.dart';

class _MapWidget extends HookWidget {
  const _MapWidget();

  @override
  Widget build(BuildContext context) {
    final googleMapController = useRef<GoogleMapController?>(null);

    final location = context.select((TripStopCubit cubit) => cubit.state.tripStop.location);
    final marker = Marker(
      markerId: const MarkerId('tripStop'),
      position: location,
    );

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Stack(
            children: [
              GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: CameraPosition(
                  target: location,
                  zoom: 15,
                ),
                onMapCreated: (controller) {
                  googleMapController.value = controller;
                  controller.animateCamera(CameraUpdate.newLatLngZoom(location, 15));
                },
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
                },
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                markers: {marker},
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: _zoomControls(googleMapController),
              ),
              Align(
                alignment: Alignment.topRight,
                child: _markerFinder(location, googleMapController),
              )
            ],
          ),
        ),
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
            icon: const Icon(Icons.remove),
            onPressed: () => controller.value?.animateCamera(CameraUpdate.zoomOut()),
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add),
            onPressed: () => controller.value?.animateCamera(CameraUpdate.zoomIn()),
          ),
        ],
      ),
    );
  }

  Widget _markerFinder(LatLng location, ObjectRef<GoogleMapController?> controller) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton.filled(
        icon: const Icon(Icons.place),
        onPressed: () => controller.value?.animateCamera(CameraUpdate.newLatLngZoom(location, 15)),
      ),
    );
  }
}
