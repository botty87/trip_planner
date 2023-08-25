part of 'new_edit_trip_stop_form.dart';

class _MapWidget extends HookWidget {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static const CameraPosition _world = CameraPosition(
    target: LatLng(0, 0),
    zoom: 0,
  );

  @override
  Widget build(BuildContext context) {
    final placesTextController = useTextEditingController();

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Stack(
            children: [
              GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: _world,
                onMapCreated: _controller.complete,
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
                },
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: _zoomControls(),
              ),
            ],
          ),
        ),
        const SizedBox(height: VERTICAL_SPACE_S),
        
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
          const SizedBox(width: HORIZONTAL_SPACE_S),
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
}
