import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'map_state.dart';
part 'map_cubit.freezed.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  MapCubit() : super(const MapState());

  changeMapType() {
    emit(state.copyWith(
      mapType: state.mapType == MapType.hybrid ? MapType.normal : MapType.hybrid,
    ));
  }

  void mapCreated() {
    emit(state.copyWith(isMapReady: true));
  }
}
