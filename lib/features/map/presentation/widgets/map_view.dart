part of 'map_widget.dart';

class _MapView extends StatelessWidget {
  final List<TripStop> _tripStops;
  final Function(TripStop tripStop)? _onMarkerTap;
  final bool _useDifferentColorsForDone;

  const _MapView({
    required List<TripStop> tripStops,
    Function(TripStop tripStop)? onMarkerTap,
    required bool useDifferentColorsForDone,
  })  : _tripStops = tripStops,
        _onMarkerTap = onMarkerTap,
        _useDifferentColorsForDone = useDifferentColorsForDone;

  @override
  Widget build(BuildContext context) {
    final mapType = context.select((MapCubit cubit) => cubit.state.mapType);

    final markers = _getMarkers();

    assert(_tripStops.isNotEmpty, 'Trip stops cannot be empty');

    if (_tripStops.length > 1) {
      final LatLngBounds? markerLatLngBounds = _getLatLngBounds(markers: markers);
      context.read<MapCubit>().updateMarkerLatLngBounds(markerLatLngBounds);
    } else {
      context.read<MapCubit>().updateMarkerPosition(_tripStops.first.location);
    }

    return GoogleMap(
      mapType: mapType,
      initialCameraPosition: const CameraPosition(
        target: LatLng(0, 0),
        zoom: 0,
      ),
      onMapCreated: (controller) => context.read<MapCubit>().mapCreated(controller),
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      markers: markers,
    );
  }

  Set<Marker> _getMarkers() {
    return _tripStops
        .map(
          (stop) => Marker(
            markerId: MarkerId(stop.id),
            position: stop.location,
            infoWindow: InfoWindow(
              title: stop.name,
              snippet: stop.description,
              onTap: _onMarkerTap != null ? () => _onMarkerTap!(stop) : null,
            ),
            icon: (stop.isDone && _useDifferentColorsForDone)
                ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
                : BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          ),
        )
        .toSet();
  }

  LatLngBounds? _getLatLngBounds({required Set<Marker> markers}) {
    return markers.isNotEmpty ? markers.map((e) => e.position).toList().getLatLngBounds() : null;
  }
}
