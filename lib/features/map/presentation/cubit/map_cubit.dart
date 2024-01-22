import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utilities/extensions.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  GoogleMapController? _mapController;

  bool isFirstMove = true;

  MapCubit({
    @factoryParam required MapStateType mapStateType,
  }) : super(mapStateType.map(
          multiple: (_) => const MapState.multiple(),
          single: (_) => const MapState.single(),
          empty: (_) => const MapState.empty(),
        ));

  void mapCreated(GoogleMapController controller) async {
    _mapController = controller;
    isFirstMove = false;
    await state.mapOrNull(
      multiple: (state) async => await state.markerLatLngBounds?.let((value) async =>
          await _mapController?.moveCamera(CameraUpdate.newLatLngBounds(value, 50))),
      single: (state) async => await state.markerPosition?.let(
          (value) async => await _mapController?.moveCamera(CameraUpdate.newLatLngZoom(value, 15))),
    );

    emit(state.copyWith(isMapReady: true));
  }

  void changeMapType() {
    final newMapType = state.mapType == MapType.hybrid ? MapType.normal : MapType.hybrid;
    emit(state.copyWith(mapType: newMapType));
  }

  void zoomOut() => _mapController?.animateCamera(CameraUpdate.zoomOut());

  void zoomIn() => _mapController?.animateCamera(CameraUpdate.zoomIn());

  void findMarkers() {
    state.mapOrNull(
      multiple: (state) => state.markerLatLngBounds?.let((value) {
        if (isFirstMove) {
          _mapController?.moveCamera(CameraUpdate.newLatLngBounds(value, 50));
          isFirstMove = false;
        } else {
          _mapController?.animateCamera(CameraUpdate.newLatLngBounds(value, 50));
        }
      }),
      single: (state) => state.markerPosition?.let((value) {
        if (isFirstMove) {
          _mapController?.moveCamera(CameraUpdate.newLatLngZoom(value, 15));
          isFirstMove = false;
        } else {
          _mapController?.animateCamera(CameraUpdate.newLatLngZoom(value, 15));
        }
      }),
    );
  }

  void updateMarkerLatLngBounds(LatLngBounds? markerLatLngBounds) {
    assert(state is _MapStateMultiple);
    emit((state as _MapStateMultiple).copyWith(markerLatLngBounds: markerLatLngBounds));
    findMarkers();
  }

  void updateMarkerPosition(LatLng? markerPosition) {
    state.mapOrNull(
      single: (state) => emit(state.copyWith(markerPosition: markerPosition)),
      empty: (state) => emit(MapState.single(
          markerPosition: markerPosition!, isMapReady: state.isMapReady, mapType: state.mapType)),
    );
    findMarkers();
  }
}
