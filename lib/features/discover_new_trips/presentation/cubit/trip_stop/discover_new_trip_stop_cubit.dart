import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../trip_stops/domain/entities/trip_stop.dart';

part 'discover_new_trip_stop_cubit.freezed.dart';
part 'discover_new_trip_stop_state.dart';

@injectable
class DiscoverNewTripStopCubit extends Cubit<DiscoverNewTripStopState> {
  GoogleMapController? _mapController;

  DiscoverNewTripStopCubit({
    @factoryParam required TripStop tripStop,
  }) : super(DiscoverNewTripStopState(tripStop: tripStop));

  void changeMapType() {
    emit(state.copyWith(
      mapType: state.mapType == MapType.normal ? MapType.hybrid : MapType.normal,
    ));
  }

  void mapCreated(GoogleMapController controller) {
    _mapController = controller;
    emit(state.copyWith(isMapReady: true));
  }

  void zoomIn() {
    _mapController?.animateCamera(CameraUpdate.zoomIn());
  }

  void zoomOut() {
    _mapController?.animateCamera(CameraUpdate.zoomOut());
  }
}
