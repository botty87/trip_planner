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

  MapCubit({
    @factoryParam required bool isMultiple,
  }) : super(isMultiple ? const MapState.multiple() : const MapState.single());

  void mapCreated(GoogleMapController controller) async {
    _mapController = controller;
    await state.map(
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
    state.map(
      multiple: (state) => state.markerLatLngBounds
          ?.let((value) => _mapController?.animateCamera(CameraUpdate.newLatLngBounds(value, 50))),
      single: (state) => state.markerPosition
          ?.let((value) => _mapController?.animateCamera(CameraUpdate.newLatLngZoom(value, 15))),
    );
  }

  void updateMarkerLatLngBounds(LatLngBounds? markerLatLngBounds) {
    assert(state is _MapStateMultiple);
    emit((state as _MapStateMultiple).copyWith(markerLatLngBounds: markerLatLngBounds));
    findMarkers();
  }

  void updateMarkerPosition(LatLng? markerPosition) {
    assert(state is _MapStateSingle);
    emit((state as _MapStateSingle).copyWith(markerPosition: markerPosition));
    findMarkers();
  }
}
