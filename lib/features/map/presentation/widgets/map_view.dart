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

    return CustomGoogleMapMarkerBuilder(
      customMarkers: markers,
      builder: (context, customMarkers) {
        return BlocSelector<MapCubit, MapState, MapType>(
          selector: (state) => state.mapType,
          builder: (context, mapType) {
            return GoogleMap(
              mapType: mapType,
              initialCameraPosition: initialCameraPosition,
              onMapCreated: (controller) => context.read<MapCubit>().mapCreated(controller),
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              markers: customMarkers ?? {},
              polylines: _polylines,
              mapToolbarEnabled: false,
              compassEnabled: false,
              gestureRecognizers: _isInsideScrollView
                  ? <Factory<OneSequenceGestureRecognizer>>{
                      Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
                    }
                  : {},
            );
          },
        );
      },
    );
  }

  List<MarkerData> _getMarkers(BuildContext context) {
    List<MarkerData> markers = [];

    if (_mapPlaces != null) {
      for (int i = 0; i < _mapPlaces!.length; i++) {
        final mapPlace = _mapPlaces![i];

        late final String markerId;
        late final InfoWindow infoWindow;
        late final Color color;
        late final String? label;

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
            color = (isDone && _useDifferentColorsForDone) ? Colors.green : Colors.red;
            label = (i + 1).toString();
          },
          newPlace: (location) {
            markerId = location.toString();
            infoWindow = InfoWindow.noText;
            color = Colors.red;
            label = null;
          },
        );

        final marker = Marker(
          markerId: MarkerId(markerId),
          position: mapPlace.location,
          infoWindow: infoWindow,
          draggable: _onMarkerDragEnd != null,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          onDragEnd: (value) {
            context.read<MapCubit>().updateMarkerPosition(value);
            _onMarkerDragEnd?.call(value);
          },
        );

        final markerData = MarkerData(
            marker: marker,
            //Draw a ruonded icon with the color of the marker and white text and border
            child: label != null
                ? Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          (i + 1).toString(),
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                : Icon(
                    Icons.location_on,
                    color: color,
                    size: 40,
                  ));

        markers.add(markerData);
      }
    }

    return markers;
  }

  LatLngBounds? _getLatLngBounds({required List<MarkerData> markers}) {
    return markers.isNotEmpty
        ? markers.map((e) => e.marker.position).toList().getLatLngBounds()
        : null;
  }
}
