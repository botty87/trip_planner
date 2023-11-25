part of 'new_edit_trip_stop_form.dart';

class _MapWidget extends HookWidget {
  final Marker? initialMarker;

  static const CameraPosition _world = CameraPosition(
    target: LatLng(0, 0),
    zoom: 0,
  );

  final Stream<Marker?> marker;

  const _MapWidget({required this.marker, this.initialMarker}) : super(key: const Key('map_widget'));

  @override
  Widget build(BuildContext context) {
    final googleMapController = useRef<GoogleMapController?>(null);

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Stack(
            children: [
              StreamBuilder<Marker?>(
                  stream: marker,
                  initialData: initialMarker,
                  builder: (context, snapshot) {
                    if (snapshot.data != null) {
                      googleMapController.value?.animateCamera(
                        CameraUpdate.newLatLngZoom(snapshot.data!.position, 15),
                      );
                    }

                    return GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: _world,
                      onMapCreated: (GoogleMapController controller) {
                        googleMapController.value = controller;
                        controller
                            .animateCamera(CameraUpdate.newLatLngZoom(snapshot.data!.position, 15));
                      },
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
                child: _zoomControls(googleMapController),
              ),
              StreamBuilder<Marker?>(
                stream: marker,
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return Align(
                      alignment: Alignment.topRight,
                      child: _markerFinder(snapshot.data!.position, googleMapController),
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

  Widget _zoomControls(ObjectRef<GoogleMapController?> controller) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
            icon: const Icon(Icons.remove),
            onPressed: () => controller.value?.animateCamera(
              CameraUpdate.zoomOut(),
            ),
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add),
            onPressed: () => controller.value?.animateCamera(
              CameraUpdate.zoomIn(),
            ),
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
        onPressed: () => controller.value?.animateCamera(
          CameraUpdate.newLatLngZoom(
            location,
            15,
          ),
        ),
      ),
    );
  }
}
