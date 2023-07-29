import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';

import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../../../day_trips/domain/usecases/listen_day_trips.dart';
import '../../../../day_trips/domain/usecases/update_day_trips_indexes.dart';
import '../../../../day_trips/errors/day_trips_failure.dart';
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/delete_trip.dart';
import '../../../domain/usecases/update_trip.dart';

part 'trip_cubit.freezed.dart';
part 'trip_state.dart';

@injectable
class TripCubit extends Cubit<TripState> {
  final UpdateTrip _saveTrip;
  final DeleteTrip _deleteTrip;
  final ListenDayTrips _listenDayTrips;
  final UpdateDayTripsIndexes _updateDayTripsIndexes;
  late final StreamSubscription<Either<DayTripsFailure, List<DayTrip>>> _dayTripsSubscription;

  TripCubit(
      {@factoryParam required Trip trip,
      required UpdateTrip saveTrip,
      required DeleteTrip deleteTrip,
      required ListenDayTrips listenDayTrips,
      required UpdateDayTripsIndexes updateDayTripsIndexes})
      : _saveTrip = saveTrip,
        _deleteTrip = deleteTrip,
        _listenDayTrips = listenDayTrips,
        _updateDayTripsIndexes = updateDayTripsIndexes,
        super(TripState(trip: trip, dayTrips: [])) {
    _dayTripsSubscription = _listenDayTrips(ListenDayTripsParams(tripId: trip.id)).listen((result) {
      result.fold(
        (failure) {
          //TODO: handle failure
        },
        (dayTrips) {
          emit(TripState(trip: state.trip, dayTrips: dayTrips));
        },
      );
    });
  }

  void edit() {
    emit(TripState.editing(
      trip: state.trip,
      dayTrips: state.dayTrips,
      name: state.trip.name,
      description: state.trip.description,
      startDate: state.trip.startDate,
    ));
  }

  void nameChanged(String value) {
    assert(state is TripStateEditing);
    emit((state as TripStateEditing).copyWith(name: value));
  }

  void descriptionChanged(String value) {
    assert(state is TripStateEditing);
    emit((state as TripStateEditing).copyWith(description: value));
  }

  void startDateChanged(DateTime value) {
    assert(state is TripStateEditing);
    emit((state as TripStateEditing).copyWith(startDate: value));
  }

  void cancelEditing() {
    emit(TripState(trip: state.trip, dayTrips: state.dayTrips));
  }

  saveChanges() async {
    assert(state is TripStateEditing);
    final tripId = state.trip.id;
    final tripDescription = (state as TripStateEditing).description;
    final tripName = (state as TripStateEditing).name;
    final tripStartDate = (state as TripStateEditing).startDate;

    emit((state as TripStateEditing).copyWith(isSaving: true));

    final result = await _saveTrip(UpdateTripParams(
      id: tripId,
      name: tripName,
      description: tripDescription,
      startDate: tripStartDate,
    ));

    result.fold(
      (failure) {
        emit((state as TripStateEditing).copyWith(
          isSaving: false,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
        ));
      },
      (_) => emit(TripState(
          trip: state.trip.copyWith(
            name: tripName,
            description: tripDescription,
            startDate: tripStartDate,
          ),
          dayTrips: state.dayTrips)),
    );
  }

  void deleteTrip() async {
    emit(TripState.deleting(trip: state.trip, dayTrips: state.dayTrips));

    final result = await _deleteTrip(DeleteTripParams(trip: state.trip));

    result.fold(
      (failure) {
        emit(TripState(
          trip: state.trip,
          dayTrips: state.dayTrips,
          errorMessage: failure.message,
        ));
      },
      (_) => emit(TripState.deleting(
        trip: state.trip,
        dayTrips: state.dayTrips,
        deleted: true,
      )),
    );
  }

  void reorderDayTrips(int oldIndex, int newIndex) {
    //fix for a bug when newIndex > oldIndex
    if (newIndex > oldIndex) newIndex--;
    final List<DayTrip> dayTripsToUpdate = [];

    dayTripsToUpdate.add(state.dayTrips[oldIndex].copyWith(index: newIndex));
    if (newIndex > oldIndex) {
      for (int i = oldIndex + 1; i <= newIndex; i++) {
        dayTripsToUpdate.add(state.dayTrips[i].copyWith(index: i - 1));
      }
    } else {
      for (int i = oldIndex - 1; i >= newIndex; i--) {
        dayTripsToUpdate.add(state.dayTrips[i].copyWith(index: i + 1));
      }
    }

    _updateDayTripsIndexes(
        UpdateDayTripsIndexesParams(dayTrips: dayTripsToUpdate, tripId: state.trip.id));
  }

  @override
  Future<void> close() {
    _dayTripsSubscription.cancel();
    return super.close();
  }
}
