import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
import '../../../domain/usecases/update_day_trip_show_directions.dart';
import '../../../domain/usecases/update_day_trip_use_different_directions_colors.dart';
import '../../../domain/usecases/update_trip_stops_directions_up_to_date.dart';
import '../../../errors/day_trips_failure.dart';

part 'trip_stops_map_cubit.freezed.dart';
part 'trip_stops_map_state.dart';

@injectable
class TripStopsMapCubit extends Cubit<TripStopsMapState> {
  final FetchTripStopsDirections _fetchTripStopsDirections;
  final SaveTripStopsDirections _saveTripStopsDirections;
  final ListenDayTrip _listenDayTrip;
  final UpdateTripStopsDirectionsUpToDate _updateTripStopsDirectionsUpToDate;
  final UpdateDayTripShowDirections _updateDayTripShowDirections;
  final UpdateDayTripUseDifferentDirectionsColors _updateDayTripUseDifferentDirectionsColors;

  final FirebaseCrashlytics _crashlytics;

  late final StreamSubscription<Either<DayTripsFailure, DayTrip>> _dayTripSubscription;

  final String _tripId;

  TripStopsMapCubit({
    required FetchTripStopsDirections fetchPolylinePoints,
    required SaveTripStopsDirections saveTripStopsDirections,
    required ListenDayTrip listenDayTrip,
    required UpdateTripStopsDirectionsUpToDate updateTripStopsDirectionsUpToDate,
    required UpdateDayTripShowDirections updateDayTripShowDirections,
    required UpdateDayTripUseDifferentDirectionsColors updateDayTripUseDifferentDirectionsColors,
    required FirebaseCrashlytics crashlytics,
    @factoryParam required Trip trip,
    @factoryParam required DayTrip dayTrip,
  })  : _fetchTripStopsDirections = fetchPolylinePoints,
        _saveTripStopsDirections = saveTripStopsDirections,
        _crashlytics = crashlytics,
        _listenDayTrip = listenDayTrip,
        _tripId = trip.id,
        _updateTripStopsDirectionsUpToDate = updateTripStopsDirectionsUpToDate,
        _updateDayTripShowDirections = updateDayTripShowDirections,
        _updateDayTripUseDifferentDirectionsColors = updateDayTripUseDifferentDirectionsColors,
        super(TripStopsMapState.normal(dayTrip: dayTrip)) {
    _dayTripSubscription =
        _listenDayTrip(ListenDayTripParams(tripId: _tripId, dayTripId: dayTrip.id))
            .listen((dayTripOrFailure) {
      dayTripOrFailure.fold(
        (failure) {
          emit(state.copyWith(errorMessage: failure.message ?? LocaleKeys.unknownError.tr()));
          emit(state.copyWith(errorMessage: null));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (dayTrip) {
          emit(state.copyWith(dayTrip: dayTrip));
        },
      );
    });
  }

  loadDirections(List<TripStop> tripStops) async {
    if (tripStops.length < 2 || state.isLoading || state.dayTrip.tripStopsDirectionsUpToDate) {
      return;
    }

    emit(state.copyWith(isLoading: true));

    final directionsOrFailure = await _fetchTripStopsDirections(
        FetchTripStopsDirectionsParams(tripStops: tripStops, travelMode: state.dayTrip.travelMode));

    directionsOrFailure.fold(
      (failure) {
        emit(state.copyWith(errorMessage: _getErrorMessage(failure), isLoading: false));
        emit(state.copyWith(errorMessage: null));
      },
      (directions) {
        final hasErrors = directions.any((element) => element.errorMessage != null);
        emit(state.copyWith(
          dayTrip: state.dayTrip.copyWith(tripStopsDirections: directions),
          hasTripStopsDirectionsErrors: hasErrors,
        ));
        saveDirections(directions);
      },
    );
  }

  void clearTripStopsDirectionsErrors() {
    emit(state.copyWith(hasTripStopsDirectionsErrors: false));
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
        emit(state.copyWith(
          errorMessage: failure.message ?? LocaleKeys.unknownError.tr(),
          isLoading: false,
        ));
        emit(state.copyWith(errorMessage: null));
      },
      (_) {
        emit(state.copyWith(
          dayTrip: state.dayTrip.copyWith(tripStopsDirectionsUpToDate: true),
          isLoading: false,
        ));
      },
    );
  }

  String _getErrorMessage(GooglePlacesFailure failure) {
    return failure.whenOrNull(
      noInternetConnection: () => LocaleKeys.noInternetConnectionMessage.tr(),
      requestDenied: (message) => "${LocaleKeys.requestDenied.tr()} $message",
      unknownError: (message) => "${LocaleKeys.unknownError.tr()} $message",
    )!;
  }

  void selectTab(bool isSelectedTab) {
    emit(state.copyWith(isSelectedTab: isSelectedTab));
  }

  void showDirectionsChanged(bool value) {
    emit(state.copyWith(dayTrip: state.dayTrip.copyWith(showDirections: value)));
    _updateDayTripShowDirections(UpdateDayTripShowDirectionsParams(
      tripId: _tripId,
      dayTripId: state.dayTrip.id,
      showDirections: value,
    ));
  }

  void useDifferentColorsChanged(bool value) {
    emit(state.copyWith(dayTrip: state.dayTrip.copyWith(useDifferentDirectionsColors: value)));
    _updateDayTripUseDifferentDirectionsColors(UpdateDayTripUseDifferentDirectionsColorsParams(
      tripId: _tripId,
      dayTripId: state.dayTrip.id,
      useDifferentDirectionsColors: value,
    ));
  }

  @override
  Future<void> close() {
    _dayTripSubscription.cancel();
    return super.close();
  }

  void travelModeChanged(TravelMode travelMode) {
    emit(state.copyWith(
        dayTrip:
            state.dayTrip.copyWith(travelMode: travelMode, tripStopsDirectionsUpToDate: false)));
    _updateTripStopsDirectionsUpToDate(
      UpdateTripStopsDirectionsUpToDateParams(
        tripId: _tripId,
        dayTripId: state.dayTrip.id,
        isUpToDate: false,
        travelMode: travelMode,
      ),
    );
  }
}
