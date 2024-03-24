import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/extensions.dart';
import '../../domain/entities/map_place.dart';
import '../cubit/map_cubit.dart';
import 'marker_generator.dart';

part 'map_markers_finder.dart';
part 'map_type_changer.dart';
part 'map_view.dart';
part 'map_zoom_buttons.dart';

class MapWidget extends StatelessWidget {
  final List<MapPlace>? _mapPlaces;
  final Function(MapPlace mapPlace)? _onMarkerTap;
  final bool _useDifferentColorsForDone;
  final Set<Polyline> _polylines;
  final bool _showInfoWindow;
  final bool _isInsideScrollView;
  final ValueChanged<LatLng>? _onMarkerDragEnd;

  const MapWidget.multiple({
    super.key,
    required List<MapPlace> mapPlaces,
    Function(MapPlace mapPlace)? onMarkerTap,
    bool useDifferentColorsForDone = true,
    Set<Polyline> polylines = const {},
    bool showInfoWindow = true,
    bool isInsideScrollView = false,
  })  : _mapPlaces = mapPlaces,
        _onMarkerTap = onMarkerTap,
        _useDifferentColorsForDone = useDifferentColorsForDone,
        _polylines = polylines,
        _showInfoWindow = showInfoWindow,
        _isInsideScrollView = isInsideScrollView,
        _onMarkerDragEnd = null;

  MapWidget.single({
    super.key,
    required MapPlace mapPlace,
    Function(MapPlace mapPlace)? onMarkerTap,
    bool useDifferentColorsForDone = true,
    bool showInfoWindow = true,
    bool isInsideScrollView = false,
    ValueChanged<LatLng>? onMarkerDragEnd,
  })  : _mapPlaces = [mapPlace],
        _onMarkerTap = onMarkerTap,
        _useDifferentColorsForDone = useDifferentColorsForDone,
        _polylines = const {},
        _showInfoWindow = showInfoWindow,
        _isInsideScrollView = isInsideScrollView,
        _onMarkerDragEnd = onMarkerDragEnd;

  const MapWidget.empty({
    super.key,
    bool useDifferentColorsForDone = true,
    bool showInfoWindow = true,
    bool isInsideScrollView = false,
  })  : _mapPlaces = null,
        _onMarkerTap = null,
        _useDifferentColorsForDone = useDifferentColorsForDone,
        _polylines = const {},
        _showInfoWindow = showInfoWindow,
        _isInsideScrollView = isInsideScrollView,
        _onMarkerDragEnd = null;

  @override
  Widget build(BuildContext context) {
    //final isMultiple = _mapPlaces.length > 1;
    final mapStateType = _mapPlaces?.length == 1
        ? const MapStateType.single()
        : _mapPlaces?.isNotEmpty == true
            ? const MapStateType.multiple()
            : const MapStateType.empty();

    return BlocProvider<MapCubit>(
      create: (context) => getIt(param1: mapStateType),
      child: BlocSelector<MapCubit, MapState, bool>(
        selector: (state) => state.isMapReady || kIsWeb,
        builder: (context, isMapReady) {
          return Stack(
            children: [
              Visibility(
                visible: !isMapReady,
                child: const Center(child: CircularProgressIndicator.adaptive()),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: isMapReady ? 1 : 0,
                child: Stack(
                  children: [
                    _MapView(
                      key: const ValueKey('map_view'),
                      mapPlaces: _mapPlaces,
                      onMarkerTap: _onMarkerTap,
                      useDifferentColorsForDone: _useDifferentColorsForDone,
                      polylines: _polylines,
                      showInfoWindow: _showInfoWindow,
                      isInsideScrollView: _isInsideScrollView,
                      onMarkerDragEnd: _onMarkerDragEnd,
                    ),
                    const Align(alignment: Alignment.topLeft, child: _MapTypeChanger()),
                    const Align(alignment: Alignment.bottomRight, child: _MapZoomButtons()),
                    const Align(alignment: Alignment.topRight, child: _MapMarkersFinder()),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
