part of 'map_widget.dart';

class _MapView extends HookWidget {
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
    final markersStream = useStreamController<Set<Marker>>();

    //If we have more than one marker, we need to generate the markers with numbers
    //If we have only one marker, we don't need to generate the markers with numbers
    final totalMarkers = _mapPlaces?.length ?? 0;
    if (totalMarkers > 1) {
      MarkerGenerator(_orderedMarkerWidgets(context), (bitmaps) {
        markersStream.add(_createMarkers(bitmaps, context));
      }).generate(context);
    } else {
      markersStream.add(_createMarkers(null, context));
    }

    return StreamBuilder<Set<Marker>>(
        stream: markersStream.stream,
        initialData: const {},
        builder: (context, snapshot) {
          final CameraPosition initialCameraPosition;

          if (_mapPlaces == null || snapshot.data!.isEmpty) {
            initialCameraPosition = const CameraPosition(target: LatLng(0, 0), zoom: 0);
          } else if (_mapPlaces!.length == 1) {
            context.read<MapCubit>().updateMarkerPosition(_mapPlaces!.first.location);
            initialCameraPosition = CameraPosition(target: _mapPlaces!.first.location, zoom: 15);
          } else {
            final LatLngBounds? markerLatLngBounds = _getLatLngBounds(markers: snapshot.data!);
            context.read<MapCubit>().updateMarkerLatLngBounds(markerLatLngBounds);
            initialCameraPosition = const CameraPosition(target: LatLng(0, 0), zoom: 0);
          }

          return BlocSelector<MapCubit, MapState, MapType>(
            selector: (state) => state.mapType,
            builder: (context, mapType) {
              return GoogleMap(
                mapType: mapType,
                initialCameraPosition: initialCameraPosition,
                onMapCreated: (controller) => context.read<MapCubit>().mapCreated(controller),
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                markers: snapshot.data!,
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
        });
  }

  LatLngBounds? _getLatLngBounds({required Set<Marker> markers}) {
    return markers.isNotEmpty ? markers.map((e) => e.position).toList().getLatLngBounds() : null;
  }

  //Create a set of markers with custom bitmaps
  Set<Marker> _createMarkers(List<Uint8List>? bitmaps, BuildContext context) {
    final markers = <Marker>{};

    for (int i = 0; i < (_mapPlaces?.length ?? 0); i++) {
      final mapPlace = _mapPlaces![i];

      final (markerId, infoWindow, icon) = _mapPlaceToMarker(mapPlace, bitmaps?[i], context);

      final marker = _createMarker(
        position: mapPlace.location,
        markerId: markerId,
        infoWindow: infoWindow,
        icon: icon,
        draggable: _onMarkerDragEnd != null,
        onDragEnd: (value) {
          context.read<MapCubit>().updateMarkerPosition(value);
          _onMarkerDragEnd?.call(value);
        },
      );

      markers.add(marker);
    }

    return markers;
  }

  //Get the markerId, infoWindow and icon for a mapPlace
  (String, InfoWindow, BitmapDescriptor) _mapPlaceToMarker(
      MapPlace mapPlace, Uint8List? bitmap, BuildContext context) {
    late final String markerId;
    late final InfoWindow infoWindow;
    late final BitmapDescriptor icon;

    mapPlace.when(
      existing: (id, name, description, location, isDone) {
        markerId = id;
        infoWindow = _showInfoWindow
            ? _createInfoWindow(
                name, description, _onMarkerTap != null ? () => _onMarkerTap!(mapPlace) : null)
            : InfoWindow.noText;
        icon = bitmap != null ? BitmapDescriptor.fromBytes(bitmap) : BitmapDescriptor.defaultMarker;
      },
      newPlace: (location) {
        markerId = location.toString();
        infoWindow = InfoWindow.noText;
        icon = bitmap != null ? BitmapDescriptor.fromBytes(bitmap) : BitmapDescriptor.defaultMarker;
      },
    );

    return (markerId, infoWindow, icon);
  }

  InfoWindow _createInfoWindow(String title, String? snippet, VoidCallback? onTap) {
    return InfoWindow(
      title: title,
      snippet: snippet,
      onTap: onTap,
    );
  }

  Marker _createMarker({
    required LatLng position,
    required String markerId,
    required InfoWindow infoWindow,
    required BitmapDescriptor icon,
    bool draggable = false,
    ValueChanged<LatLng>? onDragEnd,
  }) {
    return Marker(
      markerId: MarkerId(markerId),
      position: position,
      infoWindow: infoWindow,
      draggable: draggable,
      icon: icon,
      onDragEnd: onDragEnd,
    );
  }

  //Create a list of custom markers with numbers
  List<Widget> _orderedMarkerWidgets(BuildContext context) {
    final List<Widget> markerWidgets = [];

    final ResponsiveValue<double> responsiveMarkerSize = ResponsiveValue(
      context,
      defaultValue: 50,
      conditionalValues: [
        const Condition.largerThan(name: TABLET, value: 30),
        const Condition.largerThan(name: DESKTOP, value: 18),
      ],
    );

    final double markerSize = kIsWeb ? 20 : responsiveMarkerSize.value;

    for (int i = 0; i < (_mapPlaces?.length ?? 0); i++) {
      final color = _mapPlaces![i].when(
        existing: (_, __, ___, ____, isDone) => _useDifferentColorsForDone
            ? isDone
                ? Colors.green
                : Colors.red
            : Colors.red,
        newPlace: (_) => Colors.red,
      );

      markerWidgets.add(
        Container(
          width: markerSize,
          height: markerSize,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                (i + 1).toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    }
    return markerWidgets;
  }
}
