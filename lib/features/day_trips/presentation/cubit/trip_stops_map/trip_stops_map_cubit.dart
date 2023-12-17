import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../google_places/domain/usecases/fetch_polyline_points.dart';
import '../../../../google_places/errors/google_places_failure.dart';
import '../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../trips/domain/entities/trip.dart';
import '../../../domain/entities/day_trip.dart';
import '../../../domain/entities/trip_stops_directions.dart';
import '../../../domain/usecases/save_trip_stops_directions.dart';

part 'trip_stops_map_cubit.freezed.dart';
part 'trip_stops_map_state.dart';

@injectable
class TripStopsMapCubit extends Cubit<TripStopsMapState> {
  final FetchTripStopsDirections _fetchPolylinePoints;
  final SaveTripStopsDirections _saveTripStopsDirections;

  final String _tripId;
  final String _dayTripId;

  TripStopsMapCubit({
    required FetchTripStopsDirections fetchPolylinePoints,
    required SaveTripStopsDirections saveTripStopsDirections,
    @factoryParam required Trip trip,
    @factoryParam required DayTrip dayTrip,
  })  : _fetchPolylinePoints = fetchPolylinePoints,
        _saveTripStopsDirections = saveTripStopsDirections,
        _tripId = trip.id,
        _dayTripId = dayTrip.id,
        super(TripStopsMapState.normal(tripStopsDirections: dayTrip.tripStopsDirections));

  changeMapType() {
    emit(
        state.copyWith(mapType: state.mapType == MapType.hybrid ? MapType.normal : MapType.hybrid));
  }

  loadDirections(List<TripStop> tripStops) async {
    if (tripStops.length < 2) {
      return;
    }

    emit(state.copyWith(isLoading: true));

    final directionsOrFailure =
        await _fetchPolylinePoints(FetchTripStopsDirectionsParams(tripStops: tripStops));

    directionsOrFailure.fold(
      (failure) {
        emit(TripStopsMapState.error(errorMessage: _getErrorMessage(failure)));
        emit(const TripStopsMapState.normal());
      },
      (directions) {
        emit(state.copyWith(tripStopsDirections: directions, isLoading: false));
        saveDirections(directions);
      },
    );
  }

  @visibleForTesting
  saveDirections(List<TripStopsDirections> directions) async {
    final result = await _saveTripStopsDirections(SaveTripStopsDirectionsParams(
      tripId: _tripId,
      dayTripId: _dayTripId,
      tripStopsDirections: directions,
    ));

    result.fold(
      (failure) {
        emit(
            TripStopsMapState.error(errorMessage: failure.message ?? LocaleKeys.unknownError.tr()));
        emit(const TripStopsMapState.normal());
      },
      //Do nothing
      (_) {},
    );
  }

  String _getErrorMessage(GooglePlacesFailure failure) {
    return failure.whenOrNull(
      noInternetConnection: () => LocaleKeys.noInternetConnectionMessage.tr(),
      requestDenied: (message) => "${LocaleKeys.requestDenied.tr()} $message",
      unknownError: (message) => "${LocaleKeys.unknownError.tr()} $message",
    )!;
  }
}