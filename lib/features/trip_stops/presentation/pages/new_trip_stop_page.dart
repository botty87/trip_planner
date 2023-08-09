import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trips/domain/entities/trip.dart';

@RoutePage()
class NewTripStopPage extends StatelessWidget {
  final Trip _trip;
  final DayTrip _dayTrip;

  const NewTripStopPage({super.key, required Trip trip, required DayTrip dayTrip})
      : _trip = trip,
        _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Placeholder(),
    );
  }
}
