part of 'map_widget.dart';

class _MapView extends StatelessWidget {
  final List<TripStop> _tripStops;
  final Function(TripStop tripStop)? _onMarkerTap;
  final bool _useDifferentColorsForDone;
  final Set<Polyline> _polylines;

  const _MapView({
    required List<TripStop> tripStops,
    Function(TripStop tripStop)? onMarkerTap,
    required bool useDifferentColorsForDone,
    Set<Polyline> polylines = const {},
    super.key,
  })  : _tripStops = tripStops,
        _onMarkerTap = onMarkerTap,
        _useDifferentColorsForDone = useDifferentColorsForDone,
        _polylines = polylines;

  @override
  Widget build(BuildContext context) {
    final mapType = context.select((MapCubit cubit) => cubit.state.mapType);

    final markers = _getMarkers();

    assert(_tripStops.isNotEmpty, 'Trip stops cannot be empty');

    final CameraPosition initialCameraPosition;

    if (_tripStops.length > 1) {
      final LatLngBounds? markerLatLngBounds = _getLatLngBounds(markers: markers);
      context.read<MapCubit>().updateMarkerLatLngBounds(markerLatLngBounds);
      initialCameraPosition = const CameraPosition(target: LatLng(0, 0), zoom: 0);
    } else {
      context.read<MapCubit>().updateMarkerPosition(_tripStops.first.location);
      initialCameraPosition = CameraPosition(target: _tripStops.first.location, zoom: 15);
    }

    return GoogleMap(
      mapType: mapType,
      initialCameraPosition: initialCameraPosition,
      onMapCreated: (controller) => context.read<MapCubit>().mapCreated(controller),
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      markers: markers,
      polylines: _polylines,
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
