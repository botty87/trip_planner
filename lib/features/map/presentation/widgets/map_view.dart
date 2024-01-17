part of 'map_widget.dart';

class _MapView extends StatelessWidget {
  final List<MapPlace>? _mapPlaces;
  final Function(MapPlace mapPlace)? _onMarkerTap;
  final bool _useDifferentColorsForDone;
  final Set<Polyline> _polylines;
  final bool _showInfoWindow;
  final bool _isInsideScrollView;
  final ValueChanged<LatLng>? _onMarkerDragEnd;

  const _MapView({
    required List<MapPlace>? mapPlaces,
    Function(MapPlace mapPlace)? onMarkerTap,
    required bool useDifferentColorsForDone,
    Set<Polyline> polylines = const {},
    required bool showInfoWindow,
    required bool isInsideScrollView,
    required ValueChanged<LatLng>? onMarkerDragEnd,
    super.key,
  })  : _mapPlaces = mapPlaces,
        _onMarkerTap = onMarkerTap,
        _useDifferentColorsForDone = useDifferentColorsForDone,
        _polylines = polylines,
        _showInfoWindow = showInfoWindow,
        _isInsideScrollView = isInsideScrollView,
        _onMarkerDragEnd = onMarkerDragEnd;

  @override
  Widget build(BuildContext context) {
    final mapType = context.select((MapCubit cubit) => cubit.state.mapType);

    final markers = _getMarkers(context);

    final CameraPosition initialCameraPosition;

    if (_mapPlaces == null) {
      initialCameraPosition = const CameraPosition(target: LatLng(0, 0), zoom: 0);
    } else if (_mapPlaces!.length == 1) {
      context.read<MapCubit>().updateMarkerPosition(_mapPlaces!.first.location);
      initialCameraPosition = CameraPosition(target: _mapPlaces!.first.location, zoom: 15);
    } else {
      final LatLngBounds? markerLatLngBounds = _getLatLngBounds(markers: markers);
      context.read<MapCubit>().updateMarkerLatLngBounds(markerLatLngBounds);
      initialCameraPosition = const CameraPosition(target: LatLng(0, 0), zoom: 0);
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

  Set<Marker> _getMarkers(BuildContext context) {
    return _mapPlaces?.map(
          (mapPlace) {
            late final String markerId;
            late final InfoWindow infoWindow;
            late final BitmapDescriptor icon;

            mapPlace.when(
              existing: (id, name, description, location, isDone) {
                markerId = id;
                infoWindow = _showInfoWindow
                    ? InfoWindow(
                        title: name,
                        snippet: description,
                        onTap: _onMarkerTap != null ? () => _onMarkerTap!(mapPlace) : null,
                      )
                    : InfoWindow.noText;
                icon = (isDone && _useDifferentColorsForDone)
                    ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
                    : BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);

                //TODO: verify and clean this
                /* return Marker(
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
                  draggable: _onMarkerDragEnd != null,
                  onDragEnd: (value) => _onMarkerDragEnd?.call(value),
                ); */
              },
              newPlace: (location) {
                markerId = location.toString();
                infoWindow = InfoWindow.noText;
                icon = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);
              },
            );

            return Marker(
              markerId: MarkerId(markerId),
              position: mapPlace.location,
              icon: icon,
              infoWindow: infoWindow,
              draggable: _onMarkerDragEnd != null,
              onDragEnd: (value) {
                context
                    .read<MapCubit>()
                    .updateMarkerPosition(value);
                _onMarkerDragEnd?.call(value);
              },
            );
          },
        ).toSet() ??
        {};
  }

  LatLngBounds? _getLatLngBounds({required Set<Marker> markers}) {
    return markers.isNotEmpty ? markers.map((e) => e.position).toList().getLatLngBounds() : null;
  }
}
