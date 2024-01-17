import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../trip_stops/domain/entities/trip_stop.dart';

part 'discover_new_trip_stop_cubit.freezed.dart';
part 'discover_new_trip_stop_state.dart';

@injectable
class DiscoverNewTripStopCubit extends Cubit<DiscoverNewTripStopState> {
  DiscoverNewTripStopCubit({
    @factoryParam required TripStop tripStop,
  }) : super(DiscoverNewTripStopState(tripStop: tripStop));
}
