import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/debouncer.dart';
import '../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../trip_stops/domain/usecases/delete_trip_stop.dart';
import '../../../../trip_stops/domain/usecases/listen_trip_stops.dart';
import '../../../../trip_stops/domain/usecases/trip_stop_done.dart';
import '../../../../trip_stops/domain/usecases/update_travel_time.dart';
import '../../../../trip_stops/domain/usecases/update_trip_stop_placeholder.dart';
import '../../../../trip_stops/domain/usecases/update_trip_stops_indexes.dart';
import '../../../../trip_stops/errors/trip_stops_failure.dart';
import '../../../../trips/domain/entities/trip.dart';
import '../../../domain/entities/day_trip.dart';
import '../../../domain/usecases/delete_day_trip.dart';
import '../../../domain/usecases/listen_day_trip.dart';
import '../../../domain/usecases/update_day_trip.dart';
import '../../../domain/usecases/update_day_trip_start_time.dart';
import '../../../domain/usecases/update_trip_stops_directions_up_to_date.dart';
import '../../../errors/day_trips_failure.dart';

part 'day_trip_cubit.freezed.dart';
part 'day_trip_state.dart';

@injectable
class DayTripCubit extends Cubit<DayTripState> {
  final UpdateDayTrip _updateDayTrip;
  final DeleteDayTrip _deleteDayTrip;
  final ListenTripStops _listenTripStops;
  final UpdateDayTripStartTime _updateDayTripStartTime;
  final UpdateTripStopsIndexes _updateDayTripsIndexes;
  final UpdateTravelTime _updateTravelTime;
  final TripStopDone _tripStopDone;
  final ListenDayTrip _listenDayTrip;
  final UpdateTripStopsDirectionsUpToDate _updateTripStopsDirectionsUpToDate;
  final DeleteTripStop _deleteTripStop;
  final UpdateTripStopPlaceholder _updateTripStopPlaceholder;

  final FirebaseCrashlytics _crashlytics;

  StreamSubscription<Either<TripStopsFailure, List<TripStop>>>? _tripStopsSubscription;

  StreamSubscription<Either<DayTripsFailure, DayTrip>>? _dayTripSubscription;

  final _startTimeDebouncer = Debouncer(milliseconds: 5000);

  DayTripCubit({
    @factoryParam required Trip trip,
    @factoryParam required DayTrip dayTrip,
    required UpdateDayTrip updateDayTrip,
    required DeleteDayTrip deleteDayTrip,
    required ListenTripStops listenTripStops,
    required UpdateDayTripStartTime updateDayTripStartTime,
    required UpdateTripStopsIndexes updateDayTripsIndexes,
    required UpdateTravelTime updateTravelTime,
    required TripStopDone tripStopDone,
    required ListenDayTrip listenDayTrip,
    required UpdateTripStopsDirectionsUpToDate updateTripStopsDirectionsUpToDate,
    required DeleteTripStop deleteTripStop,
    required UpdateTripStopPlaceholder updateTripStopPlaceholder,
    required FirebaseCrashlytics crashlytics,
  })  : _updateDayTrip = updateDayTrip,
        _deleteDayTrip = deleteDayTrip,
        _listenTripStops = listenTripStops,
        _updateDayTripStartTime = updateDayTripStartTime,
        _updateDayTripsIndexes = updateDayTripsIndexes,
        _updateTravelTime = updateTravelTime,
        _tripStopDone = tripStopDone,
        _listenDayTrip = listenDayTrip,
        _updateTripStopsDirectionsUpToDate = updateTripStopsDirectionsUpToDate,
        _deleteTripStop = deleteTripStop,
        _updateTripStopPlaceholder = updateTripStopPlaceholder,
        _crashlytics = crashlytics,
        super(DayTripState.initial(trip: trip, dayTrip: dayTrip));

  startListenTripStops() {
    _tripStopsSubscription?.cancel();
    _tripStopsSubscription =
        _listenTripStops(ListenTripStopsParams(dayTripId: state.dayTrip.id, tripId: state.trip.id))
            .listen((result) {
      result.fold(
        (failure) {
          emit(DayTripState.error(
            trip: state.trip,
            dayTrip: state.dayTrip,
            errorMessage: failure.message ?? LocaleKeys.dataLoadError.tr(),
            fatal: true,
            hasStartTimeToSave: state.hasStartTimeToSave,
          ));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (tripStops) => state.maybeMap(
          editing: (editingState) => emit(editingState.copyWith(tripStops: tripStops)),
          orElse: () => emit(DayTripState.loaded(
            trip: state.trip,
            dayTrip: state.dayTrip,
            tripStops: tripStops,
            hasStartTimeToSave: state.hasStartTimeToSave,
          )),
        ),
      );
    });
  }

  startListenDayTrip() {
    _dayTripSubscription?.cancel();
    _dayTripSubscription =
        _listenDayTrip(ListenDayTripParams(tripId: state.trip.id, dayTripId: state.dayTrip.id))
            .listen((dayTripOrFailure) {
      dayTripOrFailure.fold(
        (failure) {
          emit(DayTripState.error(
            trip: state.trip,
            dayTrip: state.dayTrip,
            errorMessage: failure.message ?? LocaleKeys.dataLoadError.tr(),
            fatal: true,
            hasStartTimeToSave: state.hasStartTimeToSave,
          ));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (dayTrip) => state.maybeMap(
          editing: (editingState) => emit(editingState.copyWith(dayTrip: dayTrip)),
          orElse: () => emit(state.copyWith(dayTrip: dayTrip)),
        ),
      );
    });
  }

  edit() {
    state.mapOrNull(
      loaded: (loadedState) => emit(DayTripState.editing(
        trip: loadedState.trip,
        dayTrip: loadedState.dayTrip,
        tripStops: loadedState.tripStops,
        description: loadedState.dayTrip.description,
        hasStartTimeToSave: loadedState.hasStartTimeToSave,
      )),
    );
  }

  modalBottomEditingDismissed() {
    state.mapOrNull(
      editing: (editingState) => emit(DayTripState.loaded(
        trip: editingState.trip,
        dayTrip: editingState.dayTrip,
        tripStops: editingState.tripStops,
        hasStartTimeToSave: editingState.hasStartTimeToSave,
      )),
    );
  }

  descriptionChanged(String description) {
    state.mapOrNull(
      editing: (editingState) => emit(editingState.copyWith(description: description)),
    );
  }

  startTimeChanged(TimeOfDay startTime) {
    emit(state.copyWith(
        dayTrip: state.dayTrip.copyWith(startTime: startTime), hasStartTimeToSave: true));
    _startTimeDebouncer.run(() => saveDayTripStopStartTime());
  }

  void cancelEditing() {
    state.mapOrNull(
      editing: (editingState) => emit(DayTripState.loaded(
        trip: editingState.trip,
        dayTrip: editingState.dayTrip,
        tripStops: editingState.tripStops,
        hasStartTimeToSave: editingState.hasStartTimeToSave,
      )),
    );
  }

  void saveChanges() async {
    state.mapOrNull(
      editing: (editingState) async {
        emit(editingState.copyWith(isSaving: true));

        final result = await _updateDayTrip(
          UpdateDayTripParams(
            id: state.dayTrip.id,
            tripId: state.trip.id,
            description: editingState.description,
          ),
        );

        result.fold(
          (failure) {
            emit(editingState.copyWith(
              isSaving: false,
              errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
            ));
          },
          (_) {
            emit(DayTripState.loaded(
              trip: state.trip,
              dayTrip: state.dayTrip.copyWith(description: editingState.description),
              tripStops: editingState.tripStops,
            ));
          },
        );
      },
    );
  }

  Future<bool> saveDayTripStopStartTime({bool forced = false}) async {
    if (!state.hasStartTimeToSave) {
      _startTimeDebouncer.cancel();
      return true;
    }

    return await state.maybeMap(
      loaded: (loadedState) async {
        if (forced) {
          _startTimeDebouncer.cancel();
          emit(loadedState.copyWith(explictitStartTimeSave: true));
        }

        final result = await _updateDayTripStartTime(
          UpdateDayTripStartTimeParams(
            id: loadedState.dayTrip.id,
            tripId: loadedState.trip.id,
            startTime: loadedState.dayTrip.startTime,
          ),
        );

        return result.fold(
          (failure) {
            emit(DayTripState.error(
              trip: loadedState.trip,
              dayTrip: loadedState.dayTrip,
              errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
              fatal: false,
              hasStartTimeToSave: false,
            ));
            emit(loadedState.copyWith(
              hasStartTimeToSave: false,
              explictitStartTimeSave: false,
            ));
            return false;
          },
          (_) {
            emit(loadedState.copyWith(
              hasStartTimeToSave: false,
              explictitStartTimeSave: false,
            ));
            return true;
          },
        );
      },
      orElse: () => throw const UnexpectedStateException(),
    );
  }

  void deleteDayTrip() async {
    state.mapOrNull(
      loaded: (loadedState) async {
        //cancel startTimeDebouncer
        _startTimeDebouncer.cancel();

        final oldTripStops = loadedState.tripStops;

        emit(DayTripState.deleting(
          trip: loadedState.trip,
          dayTrip: loadedState.dayTrip,
          tripStops: loadedState.tripStops,
          hasStartTimeToSave: loadedState.hasStartTimeToSave,
        ));

        final result = await _deleteDayTrip(
          DeleteDayTripParams(
            tripId: state.trip.id,
            dayTripId: state.dayTrip.id,
          ),
        );

        result.fold(
          (failure) {
            emit(DayTripState.error(
              trip: state.trip,
              dayTrip: state.dayTrip,
              fatal: false,
              errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
              hasStartTimeToSave: state.hasStartTimeToSave,
            ));
            emit(DayTripState.loaded(
              trip: state.trip,
              dayTrip: state.dayTrip,
              tripStops: oldTripStops,
            ));

            //Restore startTimeDebouncer
            _startTimeDebouncer.run(() => saveDayTripStopStartTime());
          },
          (_) {
            emit(DayTripState.deleted(
              trip: state.trip,
              dayTrip: state.dayTrip,
            ));
          },
        );
      },
    );
  }

  void reorderTripStops(int oldIndex, int newIndex, List<TripStop> tripStopsSorted) async {
    state.mapOrNull(
      loaded: (state) async {
        final oldTripStops = state.tripStops;

        for (int i = 0; i < tripStopsSorted.length; i++) {
          tripStopsSorted[i] = tripStopsSorted[i].copyWith(index: i);
        }
        emit(state.copyWith(tripStops: tripStopsSorted));

        final List<TripStop> tripStopsToUpdate = [];

        tripStopsToUpdate.add(state.tripStops[oldIndex].copyWith(index: newIndex));
        if (newIndex > oldIndex) {
          for (int i = oldIndex + 1; i <= newIndex; i++) {
            tripStopsToUpdate.add(state.tripStops[i].copyWith(index: i - 1));
          }
        } else {
          for (int i = oldIndex - 1; i >= newIndex; i--) {
            tripStopsToUpdate.add(state.tripStops[i].copyWith(index: i + 1));
          }
        }

        final result = await _updateDayTripsIndexes(
          UpdateTripStopsIndexesParams(
            tripId: state.trip.id,
            dayTripId: state.dayTrip.id,
            tripStops: tripStopsToUpdate,
          ),
        );

        result.fold(
          (failure) {
            emit(DayTripState.error(
              trip: state.trip,
              dayTrip: state.dayTrip,
              fatal: false,
              errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
              hasStartTimeToSave: state.hasStartTimeToSave,
            ));
            emit(DayTripState.loaded(
              trip: state.trip,
              dayTrip: state.dayTrip,
              tripStops: oldTripStops,
              hasStartTimeToSave: state.hasStartTimeToSave,
            ));
          },
          (_) {
            _updateTripStopsDirectionsUpToDate(
              UpdateTripStopsDirectionsUpToDateParams(
                tripId: state.trip.id,
                dayTripId: state.dayTrip.id,
                isUpToDate: false,
              ),
            );
          },
        );
      },
    );
  }

  void updateTravelTimeToNextStop(String id, int inMinutes) {
    state.mapOrNull(
      loaded: (state) async {
        final oldTripStops = state.tripStops;

        final tripStopToUpdateIndex = state.tripStops.indexWhere((element) => element.id == id);
        final tripStopToUpdate =
            state.tripStops[tripStopToUpdateIndex].copyWith(travelTimeToNextStop: inMinutes);
        final tripStops = List<TripStop>.from(state.tripStops);
        tripStops[tripStopToUpdateIndex] = tripStopToUpdate;

        emit(state.copyWith(tripStops: tripStops));

        final result = await _updateTravelTime(
          UpdateTravelTimeParams(
            tripId: state.trip.id,
            dayTripId: state.dayTrip.id,
            tripStopId: id,
            travelTime: inMinutes,
          ),
        );

        result.leftMap((failure) {
          emit(DayTripState.error(
            trip: state.trip,
            dayTrip: state.dayTrip,
            fatal: false,
            errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
            hasStartTimeToSave: state.hasStartTimeToSave,
          ));
          emit(DayTripState.loaded(
            trip: state.trip,
            dayTrip: state.dayTrip,
            tripStops: oldTripStops,
          ));
        });
      },
    );
  }

  void toggleTripStopDelete(int index) {
    state.mapOrNull(
      loaded: (state) async {
        final oldTripStops = state.tripStops;

        final tripStops = List<TripStop>.from(state.tripStops);
        tripStops.removeAt(index);

        emit(state.copyWith(tripStops: tripStops));

        final result = await _deleteTripStop(
          DeleteTripStopParams(
            tripId: state.trip.id,
            dayTripId: state.dayTrip.id,
            tripStopId: state.tripStops[index].id,
          ),
        );

        if (isClosed) return;

        result.fold(
          (failure) {
            emit(DayTripState.error(
              trip: state.trip,
              dayTrip: state.dayTrip,
              fatal: false,
              errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
              hasStartTimeToSave: state.hasStartTimeToSave,
            ));

            emit(DayTripState.loaded(
              trip: state.trip,
              dayTrip: state.dayTrip,
              tripStops: oldTripStops,
            ));
          },
          (_) {
            _updateTripStopsDirectionsUpToDate(
              UpdateTripStopsDirectionsUpToDateParams(
                tripId: state.trip.id,
                dayTripId: state.dayTrip.id,
                isUpToDate: false,
              ),
            );
          },
        );
      },
    );
  }

  void toggleTripStopDone(bool isDone, int tripStopIndex) {
    state.mapOrNull(
      loaded: (state) async {
        //Set the trip stop at the index to the new value
        final tripStop = state.tripStops[tripStopIndex].copyWith(isDone: isDone);
        final tripStops = List<TripStop>.from(state.tripStops);
        tripStops[tripStopIndex] = tripStop;

        emit(state.copyWith(tripStops: tripStops));

        final result = await _tripStopDone(
          TripStopDoneParams(
            tripId: state.trip.id,
            dayTripId: state.dayTrip.id,
            tripStopId: tripStop.id,
            isDone: isDone,
          ),
        );

        if (isClosed) return;

        result.leftMap(
          (failure) {
            final oldTripStops = state.tripStops;

            //Set the trip stop at the index to the old value
            final tripStop = state.tripStops[tripStopIndex].copyWith(isDone: !isDone);
            final tripStops = List<TripStop>.from(state.tripStops);
            tripStops[tripStopIndex] = tripStop;

            emit(DayTripState.error(
              trip: state.trip,
              dayTrip: state.dayTrip,
              fatal: false,
              errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
              hasStartTimeToSave: state.hasStartTimeToSave,
            ));

            emit(DayTripState.loaded(
              trip: state.trip,
              dayTrip: state.dayTrip,
              tripStops: oldTripStops,
            ));
          },
        );
      },
    );
  }

  void showEditTripStopPlaceholderDialog(TripStop tripStop) {
    return switch (state) {
      final DayTripStateLoaded loadedState => emit(loadedState.copyWith(
          tripStopPlaceholderEditing: tripStop.placeholder ?? TripStopPlaceholder.create())),
      _ => null,
    };
  }

  void updateTripStopPlaceholderName(String value) {
    return switch (state) {
      final DayTripStateLoaded loadedState => emit(loadedState.copyWith(
          tripStopPlaceholderEditing:
              loadedState.tripStopPlaceholderEditing!.copyWith(name: value))),
      _ => null,
    };
  }

  void updateTripStopPlaceholderDuration(int inMinutes) {
    return switch (state) {
      final DayTripStateLoaded loadedState => emit(loadedState.copyWith(
          tripStopPlaceholderEditing:
              loadedState.tripStopPlaceholderEditing!.copyWith(duration: inMinutes))),
      _ => null,
    };
  }

  void cancelEditTripStopPlaceholderDialog() {
    return switch (state) {
      final DayTripStateLoaded loadedState =>
        emit(loadedState.copyWith(tripStopPlaceholderEditing: null)),
      _ => null,
    };
  }

  void addPlaceholderToTripStop(String id) async {
    final result = switch (state) {
      final DayTripStateLoaded loadedState => await _updateTripStopPlaceholder(
          UpdateTripStopPlaceholderParams(
            tripId: loadedState.trip.id,
            dayTripId: loadedState.dayTrip.id,
            tripStopId: id,
            placeholder: loadedState.tripStopPlaceholderEditing!,
          ),
        ),
      _ => null,
    };

    result?.fold(
      (failure) {
        return switch (state) {
          final DayTripStateLoaded loadedState => emit(DayTripState.error(
              trip: loadedState.trip,
              dayTrip: loadedState.dayTrip,
              errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
              fatal: false,
              hasStartTimeToSave: state.hasStartTimeToSave,
            )),
          _ => null,
        };
      },
      (_) {
        return switch (state) {
          final DayTripStateLoaded loadedState =>
            emit(loadedState.copyWith(tripStopPlaceholderEditing: null)),
          _ => null,
        };
      },
    );
  }

  void removePlaceholderFromTripStop(String id) async {
    final result = switch (state) {
      final DayTripStateLoaded loadedState => await _updateTripStopPlaceholder(
          UpdateTripStopPlaceholderParams(
            tripId: loadedState.trip.id,
            dayTripId: loadedState.dayTrip.id,
            tripStopId: id,
            placeholder: null,
          ),
        ),
      _ => null,
    };

    result?.leftMap(
      (failure) {
        return switch (state) {
          final DayTripStateLoaded loadedState => emit(DayTripState.error(
              trip: loadedState.trip,
              dayTrip: loadedState.dayTrip,
              errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
              fatal: false,
              hasStartTimeToSave: state.hasStartTimeToSave,
            )),
          _ => null,
        };
      },
    );
  }

  @override
  Future<void> close() {
    _tripStopsSubscription?.cancel();
    _dayTripSubscription?.cancel();
    return super.close();
  }
}
