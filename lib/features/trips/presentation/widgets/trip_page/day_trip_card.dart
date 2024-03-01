import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/routes/app_router.gr.dart';
import '../../../../ui/presentation/widgets/trip/generic_trip_card.dart';
import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../cubit/trip/trip_cubit.dart';

final class DayTripCard extends StatelessWidget {
  final DayTrip dayTrip;
  final DateTime tripStartDate;

  const DayTripCard({super.key, required this.dayTrip, required this.tripStartDate});

  @override
  Widget build(BuildContext context) {
    return GenericTripCard(
      name: "${LocaleKeys.day.tr()} ${dayTrip.index + 1}",
      date: DateFormat.yMMMMd().format(tripStartDate.add(Duration(days: dayTrip.index))),
      description: dayTrip.description,
      hasHandle: true,
      onTap: () => context.router
          .push(DayTripRoute(trip: context.read<TripCubit>().state.trip, dayTrip: dayTrip)),
    );
  }
}
