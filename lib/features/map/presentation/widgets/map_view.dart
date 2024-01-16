part of 'map_widget.dart';

class _MapView extends StatelessWidget {
  final List<MapPlace> _mapPlaces;
  final Function(MapPlace mapPlace)? _onMarkerTap;
  final bool _useDifferentColorsForDone;
  final Set<Polyline> _polylines;
  final bool _showInfoWindow;
  final bool _isInsideScrollView;

  const _MapView({
    required List<MapPlace> mapPlaces,
    Function(MapPlace mapPlace)? onMarkerTap,
    required bool useDifferentColorsForDone,
    Set<Polyline> polylines = const {},
    required bool showInfoWindow,
    required bool isInsideScrollView,
    super.key,
  })  : _mapPlaces = mapPlaces,
        _onMarkerTap = onMarkerTap,
        _useDifferentColorsForDone = useDifferentColorsForDone,
        _polylines = polylines,
        _showInfoWindow = showInfoWindow,
        _isInsideScrollView = isInsideScrollView;

  @override
  Widget build(BuildContext context) {
    final mapType = context.select((MapCubit cubit) => cubit.state.mapType);

    final markers = _getMarkers();

    assert(_mapPlaces.isNotEmpty, 'Trip stops cannot be empty');

    final CameraPosition initialCameraPosition;

    if (_mapPlaces.length > 1) {
      final LatLngBounds? markerLatLngBounds = _getLatLngBounds(markers: markers);
      context.read<MapCubit>().updateMarkerLatLngBounds(markerLatLngBounds);
      initialCameraPosition = const CameraPosition(target: LatLng(0, 0), zoom: 0);
    } else {
      context.read<MapCubit>().updateMarkerPosition(_mapPlaces.first.location);
      initialCameraPosition = CameraPosition(target: _mapPlaces.first.location, zoom: 15);
    }

    return GoogleMap(
      mapType: mapType,
      initialCameraPosition: initialCameraPosition,
      onMapCreated: (controller) => context.read<MapCubit>().mapCreated(controller),
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      markers: markers,
      polylines: _polylines,
      gestureRecognizers: _isInsideScrollView
          ? <Factory<OneSequenceGestureRecognizer>>{
              Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
            }
          : {},
    );
  }

  Set<Marker> _getMarkers() {
    return _mapPlaces.map(
      (mapPlace) {
        return mapPlace.when(
          existing: (id, name, description, location, isDone) {
            return Marker(
              markerId: MarkerId(id),
              position: mapPlace.location,
              infoWindow: _showInfoWindow
                  ? InfoWindow(
                      title: name,
                      snippet: description,
                      onTap: _onMarkerTap != null ? () => _onMarkerTap!(mapPlace) : null,
                    )
                  : InfoWindow.noText,
              icon: (isDone && _useDifferentColorsForDone)
                  ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
                  : BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            );
          },
          newPlace: (location) { throw UnimplementedError();},
        );
        
      },
    ).toSet();
  }

  LatLngBounds? _getLatLngBounds({required Set<Marker> markers}) {
    return markers.isNotEmpty ? markers.map((e) => e.position).toList().getLatLngBounds() : null;
  }
}
