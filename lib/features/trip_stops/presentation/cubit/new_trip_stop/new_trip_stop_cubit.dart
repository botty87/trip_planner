import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart';
import '../../../domain/usecases/create_trip_stop.dart';

part 'new_trip_stop_cubit.freezed.dart';
part 'new_trip_stop_state.dart';

@injectable
class NewTripStopCubit extends Cubit<NewTripStopState> {
  final String _tripId;
  final String _dayTripId;

  final CreateTripStop _createTripStop;
  final UpdateTripStopsDirectionsUpToDate _updateTripStopsDirectionsUpToDate;

  NewTripStopCubit({
    @factoryParam required String tripId,
    @factoryParam required String dayTripId,
    required CreateTripStop createTripStop,
    required UpdateTripStopsDirectionsUpToDate updateTripStopsDirectionsUpToDate,
  })  : _tripId = tripId,
        _dayTripId = dayTripId,
        _createTripStop = createTripStop,
        _updateTripStopsDirectionsUpToDate = updateTripStopsDirectionsUpToDate,
        super(const NewTripStopState.normal());

  void nameChanged(String value) => emit(state.copyWith(name: value));

  void descriptionChanged(String value) => emit(state.copyWith(description: value));

  void hourDurationChanged(int value) => emit(state.copyWith(hourDuration: value));

  void minuteDurationChanged(int value) => emit(state.copyWith(minuteDuration: value));

  void locationChanged(LatLng value) => emit(state.copyWith(location: value));

  Future<void> createTripStop() async {
    //Check if we have all the required fields
    if (state.name?.isEmpty ?? true) {
      _emitErrorState(LocaleKeys.enterTripStopName.tr());
      return;
    }

    if (state.hourDuration == 0 && state.minuteDuration == 0) {
      _emitErrorState(LocaleKeys.enterTripStopDuration.tr());
      return;
    }

    if (state.location == null) {
      _emitErrorState(LocaleKeys.enterTripStopLocation.tr());
      return;
    }

    emit(NewTripStopState.saving(
      name: state.name!,
      description: state.description,
      hourDuration: state.hourDuration,
      minuteDuration: state.minuteDuration,
      location: state.location!,
    ));

    final totalMinutes = state.hourDuration * 60 + state.minuteDuration;

    final result = await _createTripStop(CreateTripStopParams(
      tripId: _tripId,
      dayTripId: _dayTripId,
      name: state.name!,
      description: state.description,
      location: state.location!,
      duration: totalMinutes,
    ));

    result.fold(
      (failure) => _emitErrorState(failure.message ?? LocaleKeys.unknownError.tr()),
      (_) {
        _updateTripStopsDirectionsUpToDate(UpdateTripStopsDirectionsUpToDateParams(
          tripId: _tripId,
          dayTripId: _dayTripId,
          isUpToDate: false,
          travelMode: TravelMode.driving,
        ));

        emit(NewTripStopState.created(
          name: state.name!,
          description: state.description,
          hourDuration: state.hourDuration,
          minuteDuration: state.minuteDuration,
          location: state.location!,
        ));
      },
    );
  }

  _emitErrorState(String errorMessage) {
    emit(NewTripStopState.error(
      errorMessage: errorMessage,
      name: state.name,
      description: state.description,
      hourDuration: state.hourDuration,
      minuteDuration: state.minuteDuration,
      location: state.location,
    ));

    emit(NewTripStopState.normal(
      name: state.name,
      description: state.description,
      hourDuration: state.hourDuration,
      minuteDuration: state.minuteDuration,
      location: state.location,
    ));
  }
}
