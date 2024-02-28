import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../../core/utilities/extensions.dart';

mixin MapViewMixin {
  Set<Marker> getMarkers({
    required BuildContext context,
    required List<TripStop> tripStops,
    required Function(TripStop tripStop) onMarkerTap,
    bool useDifferentColorsForDone = true,
  }) {
    return tripStops
        .map(
          (stop) => Marker(
            markerId: MarkerId(stop.id),
            position: stop.location,
            infoWindow: InfoWindow(
              title: stop.name,
              snippet: stop.description,
              onTap: () => onMarkerTap(stop),
            ),
            icon: (stop.isDone && useDifferentColorsForDone)
                ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
                : BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          ),
        )
        .toSet();
  }

  LatLngBounds? getLatLngBounds({required Set<Marker> markers}) {
    return markers.isNotEmpty ? markers.map((e) => e.position).toList().getLatLngBounds() : null;
  }
}
