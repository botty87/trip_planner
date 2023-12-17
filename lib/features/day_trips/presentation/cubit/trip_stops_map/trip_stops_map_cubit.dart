import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
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
import '../../../domain/usecases/listen_day_trip.dart';
import '../../../domain/usecases/save_trip_stops_directions.dart';
import '../../../errors/day_trips_failure.dart';

part 'trip_stops_map_cubit.freezed.dart';
part 'trip_stops_map_state.dart';

@injectable
class TripStopsMapCubit extends Cubit<TripStopsMapState> {
  final FetchTripStopsDirections _fetchPolylinePoints;
  final SaveTripStopsDirections _saveTripStopsDirections;
  final ListenDayTrip _listenDayTrip;

  final FirebaseCrashlytics _crashlytics;

  late final StreamSubscription<Either<DayTripsFailure, DayTrip>> _dayTripSubscription;

  final String _tripId;

  TripStopsMapCubit({
    required FetchTripStopsDirections fetchPolylinePoints,
    required SaveTripStopsDirections saveTripStopsDirections,
    required ListenDayTrip listenDayTrip,
    required FirebaseCrashlytics crashlytics,
    @factoryParam required Trip trip,
    @factoryParam required DayTrip dayTrip,
  })  : _fetchPolylinePoints = fetchPolylinePoints,
        _saveTripStopsDirections = saveTripStopsDirections,
        _crashlytics = crashlytics,
        _listenDayTrip = listenDayTrip,
        _tripId = trip.id,
        super(TripStopsMapState.normal(dayTrip: dayTrip)) {
    _dayTripSubscription =
        _listenDayTrip(ListenDayTripParams(tripId: _tripId, dayTripId: dayTrip.id))
            .listen((dayTripOrFailure) {
      dayTripOrFailure.fold(
        (failure) {
          emit(TripStopsMapState.error(
            errorMessage: failure.message ?? LocaleKeys.unknownError.tr(),
            dayTrip: state.dayTrip,
          ));
          emit(TripStopsMapState.normal(dayTrip: state.dayTrip));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (dayTrip) {
          emit(state.copyWith(dayTrip: dayTrip));
        },
      );
    });
  }

  changeMapType() {
    emit(
        state.copyWith(mapType: state.mapType == MapType.hybrid ? MapType.normal : MapType.hybrid));
  }

  loadDirections(List<TripStop> tripStops) async {
    if (tripStops.length < 2 || state.isLoading) {
      return;
    }

    emit(state.copyWith(isLoading: true));

    final directionsOrFailure =
        await _fetchPolylinePoints(FetchTripStopsDirectionsParams(tripStops: tripStops));

    directionsOrFailure.fold(
      (failure) {
        emit(TripStopsMapState.error(
          errorMessage: _getErrorMessage(failure),
          dayTrip: state.dayTrip,
        ));
        emit(TripStopsMapState.normal(dayTrip: state.dayTrip));
      },
      (directions) {
        emit(state.copyWith(
          dayTrip: state.dayTrip.copyWith(tripStopsDirections: directions),
          isLoading: false,
        ));
        saveDirections(directions);
      },
    );
  }

  @visibleForTesting
  saveDirections(List<TripStopsDirections> directions) async {
    final result = await _saveTripStopsDirections(SaveTripStopsDirectionsParams(
      tripId: _tripId,
      dayTripId: state.dayTrip.id,
      tripStopsDirections: directions,
    ));

    result.fold(
      (failure) {
        emit(TripStopsMapState.error(
          errorMessage: failure.message ?? LocaleKeys.unknownError.tr(),
          dayTrip: state.dayTrip,
          isLoading: false,
        ));
        emit(TripStopsMapState.normal(dayTrip: state.dayTrip));
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

  @override
  Future<void> close() {
    _dayTripSubscription.cancel();
    return super.close();
  }
}
