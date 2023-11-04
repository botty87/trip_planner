part of '../../pages/trip_stop_page.dart';

class _MapWidget extends HookWidget {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  _MapWidget();

  @override
  Widget build(BuildContext context) {
    final tripStop = context.read<TripStopCubit>().state.tripStop;
    final marker = Marker(
      markerId: MarkerId(tripStop.id),
      position: tripStop.location,
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
                  target: tripStop.location,
                  zoom: 15,
                ),
                onMapCreated: _controller.complete,
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
                },
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                markers: {marker},
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: _zoomControls(),
              ),
              Align(
                alignment: Alignment.topRight,
                child: _markerFinder(tripStop.location),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _zoomControls() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
            icon: const Icon(Icons.remove),
            onPressed: () => _controller.future.then((controller) => controller.animateCamera(
                  CameraUpdate.zoomOut(),
                )),
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add),
            onPressed: () => _controller.future.then((controller) => controller.animateCamera(
                  CameraUpdate.zoomIn(),
                )),
          ),
        ],
      ),
    );
  }

  Widget _markerFinder(LatLng location) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton.filled(
        icon: const Icon(Icons.place),
        onPressed: () => _controller.future.then(
          (controller) => controller.animateCamera(
            CameraUpdate.newLatLngZoom(
              location,
              15,
            ),
          ),
        ),
      ),
    );
  }
}
