import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../domain/usecases/get_public_trip_stops.dart';

part 'discover_new_trip_stops_cubit.freezed.dart';
part 'discover_new_trip_stops_state.dart';

@injectable
class DiscoverNewTripStopsCubit extends Cubit<DiscoverNewTripStopsState> {
  final GetPublicTripStops _getPubliTripStops;
  final String _tripId;
  final String _dayTripId;

  DiscoverNewTripStopsCubit({
    required GetPublicTripStops getPublicTripStops,
    @factoryParam required String tripId,
    @factoryParam required String dayTripId,
  })  : _tripId = tripId,
        _getPubliTripStops = getPublicTripStops,
        _dayTripId = dayTripId,
        super(const DiscoverNewTripStopsState.initial());

  fetchTripStops() {
    _getPubliTripStops(GetPubliTripStopsParams(tripId: _tripId, dayTripId: _dayTripId))
        .then((failureOrTripStops) {
      failureOrTripStops.fold(
        (failure) => emit(DiscoverNewTripStopsState.error(
            message: failure.message ?? LocaleKeys.unknownError.tr())),
        (tripStops) => emit(DiscoverNewTripStopsState.loaded(tripStops: tripStops)),
      );
    });
  }

  void setMapReady() {
    assert(state is _Loaded);
    emit((state as _Loaded).copyWith(isMapReady: true));
  }

  void changeMapType() {
    assert(state is _Loaded);
    final mapType = (state as _Loaded).mapType;
    final newMapType = mapType == MapType.hybrid ? MapType.normal : MapType.hybrid;
    emit((state as _Loaded).copyWith(mapType: newMapType));
  }

  void updateMarkerLatLngBounds(LatLngBounds? markerLatLngBounds) {
    assert(state is _Loaded);
    emit((state as _Loaded).copyWith(markerLatLngBounds: markerLatLngBounds));
  }
}
