import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';

import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../../trips/domain/entities/trip.dart';

part 'day_trip_state.dart';
part 'day_trip_cubit.freezed.dart';

@injectable
class DayTripCubit extends Cubit<DayTripState> {
  DayTripCubit({@factoryParam required Trip trip, @factoryParam required DayTrip dayTrip})
      : super(DayTripState(
          trip: trip,
          dayTrip: dayTrip,
        ));
}
