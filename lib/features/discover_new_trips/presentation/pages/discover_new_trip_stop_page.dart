import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/widgets/trip/generic_trip_header.dart';
import '../../../map/presentation/widgets/map_widget.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../cubit/trip_stop/discover_new_trip_stop_cubit.dart';

part '../widgets/trip_stop/discover_new_trip_stop_body.dart';
part '../widgets/trip_stop/horizontal_layout.dart';
part '../widgets/trip_stop/vertical_layout.dart';
part '../widgets/trip_stop/trip_stop_description.dart';
part '../widgets/trip_stop/map_widget.dart';

@RoutePage()
class DiscoverNewTripStopPage extends StatelessWidget {
  final TripStop _tripStop;
  const DiscoverNewTripStopPage({super.key, required TripStop tripStop}) : _tripStop = tripStop;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DiscoverNewTripStopCubit>(
      create: (context) => getIt<DiscoverNewTripStopCubit>(param1: _tripStop),
      child: Scaffold(
        appBar: AppBar(
          title: Text(_tripStop.name),
        ),
        body: const _DiscoverNewTripStopBody(),
      ),
    );
  }
}
