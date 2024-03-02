import 'package:flutter/material.dart';

import '../day_trip_map_widget.dart';

class SingleTripStopsMapWidget extends StatelessWidget {
  const SingleTripStopsMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DayTripMapWidget(isSingleTripStop: true);
  }
}
