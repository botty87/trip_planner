import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';

import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../../../day_trips/domain/usecases/listen_day_trips.dart';
import '../../../../day_trips/errors/day_trips_failure.dart';
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/delete_trip.dart';
import '../../../domain/usecases/save_trip.dart';

part 'trip_cubit.freezed.dart';
part 'trip_state.dart';

@injectable
class TripCubit extends Cubit<TripState> {
  final SaveTrip _saveTrip;
  final DeleteTrip _deleteTrip;
  final ListenDayTrips _listenDayTrips;
  late final StreamSubscription<Either<DayTripsFailure, List<DayTrip>>> _dayTripsSubscription;

  TripCubit(
      {@factoryParam required Trip trip,
      required SaveTrip saveTrip,
      required DeleteTrip deleteTrip,
      required ListenDayTrips listenDayTrips})
      : _saveTrip = saveTrip,
        _deleteTrip = deleteTrip,
        _listenDayTrips = listenDayTrips,
        super(TripState(trip: trip, dayTrips: [])) {
    _dayTripsSubscription =
        _listenDayTrips(ListenDayTripsParams(tripId: trip.id!)).listen((result) {
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
    ));
  }

  void nameChanged(String value) {
    assert(state is TripStateEditing);
    emit((state as TripStateEditing).copyWith(name: value));
  }

  descriptionChanged(String value) {
    assert(state is TripStateEditing);
    emit((state as TripStateEditing).copyWith(description: value));
  }

  void editCancel() {
    emit(TripState(trip: state.trip, dayTrips: state.dayTrips));
  }

  save() async {
    assert(state is TripStateEditing);
    final tripId = state.trip.id!;
    final tripDescription = (state as TripStateEditing).description;
    final tripName = (state as TripStateEditing).name;

    emit((state as TripStateEditing).copyWith(isSaving: true));

    final result = await _saveTrip(SaveTripParams(
      id: tripId,
      name: tripName,
      description: tripDescription,
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

  @override
  Future<void> close() {
    _dayTripsSubscription.cancel();
    return super.close();
  }
}
