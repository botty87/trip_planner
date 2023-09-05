import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/create_trip_stop.dart';

part 'new_trip_stop_state.dart';
part 'new_trip_stop_cubit.freezed.dart';

@injectable
class NewTripStopCubit extends Cubit<NewTripStopState> {
  final String _tripId;
  final String _dayTripId;

  final CreateTripStop _createTripStop;

  NewTripStopCubit({
    @factoryParam required String tripId,
    @factoryParam required String dayTripId,
    required CreateTripStop createTripStop,
  })  : _tripId = tripId,
        _dayTripId = dayTripId,
        _createTripStop = createTripStop,
        super(NewTripStopState.normal());

  void nameChanged(String value) {
    emit(state.copyWith(name: value));
  }

  void descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  void startTimeChanged(TimeOfDay value) {
    emit(state.copyWith(startTime: value));
  }

  void endTimeChanged(TimeOfDay value) {
    emit(state.copyWith(endTime: value));
  }

  void locationChanged(LatLng value) {
    emit(state.copyWith(location: value));
  }

  createTripStop() async {
    //Check if we have all the required fields
    if (state.name?.isEmpty ?? true) {
      _emitErrorState(LocaleKeys.enterTripStopName.tr());
      return;
    }

    if (state.startTime == null) {
      _emitErrorState(LocaleKeys.enterTripStopStartTime.tr());
      return;
    }

    if (state.endTime == null) {
      _emitErrorState(LocaleKeys.enterTripStopEndTime.tr());
      return;
    }

    if (state.location == null) {
      _emitErrorState(LocaleKeys.enterTripStopLocation.tr());
      return;
    }

    emit(NewTripStopState.saving(
        name: state.name!,
        description: state.description,
        startTime: state.startTime!,
        endTime: state.endTime!,
        location: state.location!));

    final result = await _createTripStop(CreateTripStopParams(
        tripId: _tripId,
        dayTripId: _dayTripId,
        name: state.name!,
        description: state.description,
        location: state.location!,
        startTime: state.startTime!,
        endTime: state.endTime!));

    result.fold(
      (failure) => _emitErrorState(failure.message ?? LocaleKeys.unknownError.tr()),
      (_) => emit(NewTripStopState.created(
          name: state.name!,
          description: state.description,
          startTime: state.startTime!,
          endTime: state.endTime!,
          location: state.location!)),
    );
  }

  _emitErrorState(String errorMessage) {
    emit(NewTripStopState.error(
        errorMessage: errorMessage,
        name: state.name,
        description: state.description,
        startTime: state.startTime,
        endTime: state.endTime,
        location: state.location));

    emit(NewTripStopState.normal(
        name: state.name,
        description: state.description,
        startTime: state.startTime,
        endTime: state.endTime,
        location: state.location));
  }
}
