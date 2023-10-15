import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../../../trips/domain/entities/trip.dart';
import '../../../domain/entities/trip_stop.dart';

part 'trip_stop_state.dart';
part 'trip_stop_cubit.freezed.dart';

@injectable
class TripStopCubit extends Cubit<TripStopState> {
  TripStopCubit({
    @factoryParam required TripStopCubitParams params,
  }) : super(TripStopState.normal(
        trip: params.trip,
        dayTrip: params.dayTrip,
        tripStop: params.tripStop
  ));

  edit() {}

  isDoneChanged(bool isDone) {
    emit(TripStopState.normal(
      trip: state.trip,
      dayTrip: state.dayTrip,
      tripStop: state.tripStop.copyWith(isDone: isDone),
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
