import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../../core/routes/app_router.gr.dart';
import '../../../../../../core/utilities/extensions.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../../ui/presentation/widgets/trip/generic_trip_card.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

final class TripStopCard extends StatelessWidget {
  final TripStop tripStop;
  final StartEndTime tripStartEndTimes;
  final SlidableController? slidableController;

  const TripStopCard({
    super.key,
    required this.tripStop,
    required this.tripStartEndTimes,
    required this.slidableController,
  });

  @override
  Widget build(BuildContext context) {
    return GenericTripCard(
      name: tripStop.name,
      date: _getDate(),
      description: tripStop.description,
      hasHandle: true,
      onTap: () {
        slidableController?.close();
        final state = context.read<DayTripCubit>().state;
        context.router
            .push(TripStopRoute(trip: state.trip, dayTrip: state.dayTrip, tripStop: tripStop));
      },
      color: tripStop.isDone ? Colors.green[context.isDarkMode ? 700 : 100] : null,
    );
  }

  String _getDate() {
    final dateFormat = DateFormat('HH:mm');
    return '${dateFormat.format(tripStartEndTimes.startTime)} - ${dateFormat.format(tripStartEndTimes.endTime)}';
  }
}
