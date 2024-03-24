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
    final markers = useStreamController<Set<Marker>>();

    MarkerGenerator(markerWidgets(context), (bitmaps) {
      markers.add(mapBitmapsToMarkers(bitmaps, context));
    }).generate(context);

    return StreamBuilder<Set<Marker>>(
        stream: markers.stream,
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

  Set<Marker> mapBitmapsToMarkers(List<Uint8List> bitmaps, BuildContext context) {
    final markers = <Marker>{};

    if (_mapPlaces != null) {
      if (_mapPlaces!.length > 1) {
        for (int i = 0; i < _mapPlaces!.length; i++) {
          final mapPlace = _mapPlaces![i];

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
              icon = BitmapDescriptor.fromBytes(bitmaps[i]);
            },
            newPlace: (location) {
              markerId = location.toString();
              infoWindow = InfoWindow.noText;
              icon = BitmapDescriptor.fromBytes(bitmaps[i]);
            },
          );

          final marker = Marker(
            markerId: MarkerId(markerId),
            position: mapPlace.location,
            infoWindow: infoWindow,
            draggable: _onMarkerDragEnd != null,
            icon: icon,
            onDragEnd: (value) {
              context.read<MapCubit>().updateMarkerPosition(value);
              _onMarkerDragEnd?.call(value);
            },
          );

          markers.add(marker);
        }
      }
    }

    return markers;
  }

  LatLngBounds? _getLatLngBounds({required Set<Marker> markers}) {
    return markers.isNotEmpty ? markers.map((e) => e.position).toList().getLatLngBounds() : null;
  }

  List<Widget> markerWidgets(BuildContext context) {
    List<Widget> markerWidgets = [];

    ResponsiveValue<double> markerSize = ResponsiveValue(
      context,
      defaultValue: 50,
      conditionalValues: [
        const Condition.largerThan(name: TABLET, value: 25),
        const Condition.largerThan(name: DESKTOP, value: 18),
      ],
    );

    for (int i = 0; i < _mapPlaces!.length; i++) {
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
          width: markerSize.value,
          height: markerSize.value,
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
