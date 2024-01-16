import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../cubit/map_cubit.dart';

part 'map_markers_finder.dart';
part 'map_type_changer.dart';
part 'map_view.dart';
part 'map_zoom_buttons.dart';

class MapWidget extends StatelessWidget {
  final List<TripStop> _tripStops;
  final Function(TripStop tripStop)? _onMarkerTap;
  final bool _useDifferentColorsForDone;
  final Set<Polyline> _polylines;

  const MapWidget.multiple({
    super.key,
    required List<TripStop> tripStops,
    Function(TripStop tripStop)? onMarkerTap,
    bool useDifferentColorsForDone = true,
    Set<Polyline> polylines = const {},
  })  : _tripStops = tripStops,
        _onMarkerTap = onMarkerTap,
        _useDifferentColorsForDone = useDifferentColorsForDone,
        _polylines = polylines;

  MapWidget.single({
    super.key,
    required TripStop tripStop,
    Function(TripStop tripStop)? onMarkerTap,
    bool useDifferentColorsForDone = true,
  })  : _tripStops = [tripStop],
        _onMarkerTap = onMarkerTap,
        _useDifferentColorsForDone = useDifferentColorsForDone,
        _polylines = const {};

  @override
  Widget build(BuildContext context) {
    final isMultiple = _tripStops.length > 1;

    return BlocProvider<MapCubit>(
      create: (context) => getIt(param1: isMultiple),
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
                      tripStops: _tripStops,
                      onMarkerTap: _onMarkerTap,
                      useDifferentColorsForDone: _useDifferentColorsForDone,
                      polylines: _polylines,
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
