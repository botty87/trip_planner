import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../trip_stops/domain/entities/trip_stop.dart';

@RoutePage()
class DiscoverNewTripStopPage extends StatelessWidget {
  final TripStop _tripStop;
  const DiscoverNewTripStopPage({super.key, required TripStop tripStop})
      : _tripStop = tripStop;
        
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}