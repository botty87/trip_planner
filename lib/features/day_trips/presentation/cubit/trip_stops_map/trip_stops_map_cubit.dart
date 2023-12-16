import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'trip_stops_map_state.dart';
part 'trip_stops_map_cubit.freezed.dart';

@injectable
class TripStopsMapCubit extends Cubit<TripStopsMapState> {
  TripStopsMapCubit() : super(const TripStopsMapState());

  changeMapType() {
    emit(state.copyWith(mapType: state.mapType == MapType.hybrid ? MapType.normal : MapType.hybrid));
  }
}
