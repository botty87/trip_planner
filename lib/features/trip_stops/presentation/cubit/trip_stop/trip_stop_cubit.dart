import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../../../trips/domain/entities/trip.dart';
import '../../../domain/entities/trip_stop.dart';
import '../../../domain/usecases/trip_stop_done.dart';

part 'trip_stop_cubit.freezed.dart';
part 'trip_stop_state.dart';

@injectable
class TripStopCubit extends Cubit<TripStopState> {
  final TripStopDone _tripStopDone;

  TripStopCubit({
    @factoryParam required TripStopCubitParams params,
    required TripStopDone tripStopDone,
  })  : _tripStopDone = tripStopDone,
        super(TripStopState.normal(
            trip: params.trip, dayTrip: params.dayTrip, tripStop: params.tripStop));

  edit() {}

  isDoneChanged(bool isDone) async {
    final result = await _tripStopDone(TripStopDoneParams(
      tripId: state.trip.id,
      dayTripId: state.dayTrip.id,
      tripStopId: state.tripStop.id,
      isDone: isDone,
    ));

    result.fold(
      (failure) => emit(TripStopState.error(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStop: state.tripStop,
        message: failure.message ?? LocaleKeys.unknownError.tr(),
      )),
      (_) => emit(TripStopState.normal(
        trip: state.trip,
        dayTrip: state.dayTrip,
        tripStop: state.tripStop.copyWith(isDone: isDone),
      )),
    );
  }

  void onUIError(Exception e) {
    emit(TripStopState.error(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop,
      message: e.toString(),
    ));

    emit(TripStopState.normal(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop,
    ));
  }
}

final class TripStopCubitParams {
  final Trip trip;
  final DayTrip dayTrip;
  final TripStop tripStop;

  const TripStopCubitParams({
    required this.trip,
    required this.dayTrip,
    required this.tripStop,
  });
}
