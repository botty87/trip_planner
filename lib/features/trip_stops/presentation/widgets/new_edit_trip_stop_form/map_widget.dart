part of 'new_edit_trip_stop_form.dart';

class _MapWidget extends HookWidget {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static const CameraPosition _world = CameraPosition(
    target: LatLng(0, 0),
    zoom: 0,
  );

  final Stream<Marker?> marker;

  _MapWidget({required this.marker});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Stack(
            children: [
              StreamBuilder<Marker?>(
                  stream: marker,
                  builder: (context, snapshot) {
                    if (snapshot.data != null) {
                      _controller.future.then((controller) => controller
                          .animateCamera(CameraUpdate.newLatLngZoom(snapshot.data!.position, 15)));
                    }

                    return GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: _world,
                      onMapCreated: _controller.complete,
                      gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                        Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
                      },
                      myLocationButtonEnabled: false,
                      zoomControlsEnabled: false,
                      markers: snapshot.data != null ? {snapshot.data!} : {},
                    );
                  }),
              Align(
                alignment: Alignment.bottomRight,
                child: _zoomControls(),
              ),
              StreamBuilder<Marker?>(
                stream: marker,
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return Align(
                      alignment: Alignment.topRight,
                      child: _markerFinder(snapshot.data!.position),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
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
