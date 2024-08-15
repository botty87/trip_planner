
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/di/di.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/day_trip.dart';
import '../cubit/day_trip/day_trip_cubit.dart';
import '../cubit/trip_stops_map/trip_stops_map_cubit.dart';
import '../widgets/day_trip_page/body/day_trip_page_body.dart';

@RoutePage()
class DayTripPage extends HookWidget {
  const DayTripPage({super.key, required Trip trip, required DayTrip dayTrip})
      : _trip = trip,
        _dayTrip = dayTrip;

  final Trip _trip;
  final DayTrip _dayTrip;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DayTripCubit>(create: (context) => getIt(param1: _trip, param2: _dayTrip)),
        BlocProvider<TripStopsMapCubit>(
          create: (context) => getIt(param1: _trip, param2: _dayTrip),
        ),
      ],
      child: const DayTripPageBody(),
    );
  }
}

