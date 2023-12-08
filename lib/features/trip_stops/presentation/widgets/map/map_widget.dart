import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/di/di.dart';
import '../../cubit/map/cubit/map_cubit.dart';

class MapWidget extends HookWidget {
  final LatLng? initialLocation;
  final Stream<LatLng?> locationStream;

  final ValueChanged<LatLng>? onMarkerDragEnd;

  static const CameraPosition _worldPosition = CameraPosition(
    target: LatLng(0, 0),
    zoom: 0,
  );

  const MapWidget(
      {super.key,
      required this.initialLocation,
      required this.locationStream,
      this.onMarkerDragEnd});

  @override
  Widget build(BuildContext context) {
    final googleMapController = useRef<GoogleMapController?>(null);
    final mapLocation = useRef<LatLng?>(initialLocation);

    return BlocProvider<MapCubit>(
      create: (context) => getIt(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: StreamBuilder<LatLng?>(
            stream: locationStream,
            initialData: initialLocation,
            builder: (context, snapshot) {
              mapLocation.value = snapshot.data;

              final Marker? marker = mapLocation.value != null
                  ? Marker(
                      markerId: const MarkerId('tripStop'),
                      position: mapLocation.value!,
                      draggable: onMarkerDragEnd != null,
                      onDragEnd: (markerLocation) {
                        onMarkerDragEnd?.call(markerLocation);
                        googleMapController.value
                            ?.animateCamera(CameraUpdate.newLatLngZoom(markerLocation, 15));
                        mapLocation.value = markerLocation;
                      })
                  : null;

              if (mapLocation.value != null && googleMapController.value != null) {
                googleMapController.value!
                    .animateCamera(CameraUpdate.newLatLngZoom(mapLocation.value!, 15));
              }

              return Stack(
                children: [
                  BlocSelector<MapCubit, MapState, MapType>(
                    selector: (state) {
                      return state.mapType;
                    },
                    builder: (context, mapType) {
                      return GoogleMap(
                        mapType: mapType,
                        initialCameraPosition: mapLocation.value != null
                            ? CameraPosition(
                                target: mapLocation.value!,
                                zoom: 15,
                              )
                            : _worldPosition,
                        onMapCreated: (controller) {
                          googleMapController.value = controller;
                          if (mapLocation.value != null) {
                            controller
                                .animateCamera(CameraUpdate.newLatLngZoom(mapLocation.value!, 15));
                          }
                        },
                        gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                          Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
                        },
                        myLocationButtonEnabled: false,
                        zoomControlsEnabled: false,
                        markers: marker != null ? {marker} : {},
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: _zoomControls(googleMapController),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: _mapTypeChanger(),
                  ),
                  if (mapLocation.value != null)
                    Align(
                      alignment: Alignment.topRight,
                      child: _markerFinder(mapLocation, googleMapController),
                    ),
                ],
              );
            }),
      ),
    );
  }

  Widget _zoomControls(ObjectRef<GoogleMapController?> controller) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
            icon: const Icon(Icons.remove, color: Colors.white),
            onPressed: () => controller.value?.animateCamera(CameraUpdate.zoomOut()),
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () => controller.value?.animateCamera(CameraUpdate.zoomIn()),
          ),
        ],
      ),
    );
  }

  Widget _markerFinder(ObjectRef<LatLng?> location, ObjectRef<GoogleMapController?> controller) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton.filled(
        icon: const Icon(Icons.place, color: Colors.white),
        onPressed: () =>
            controller.value?.animateCamera(CameraUpdate.newLatLngZoom(location.value!, 15)),
      ),
    );
  }

  Widget _mapTypeChanger() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocSelector<MapCubit, MapState, MapType>(
        selector: (state) {
          return state.mapType;
        },
        builder: (context, mapType) {
          return IconButton.filled(
            icon: Icon(
              mapType != MapType.hybrid ? Icons.map : Icons.map_outlined,
              color: Colors.white,
            ),
            onPressed: () => context.read<MapCubit>().changeMapType(),
          );
        },
      ),
    );
  }
}
