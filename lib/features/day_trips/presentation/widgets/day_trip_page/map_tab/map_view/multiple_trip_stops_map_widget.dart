import 'package:flutter/material.dart';

import '../day_trip_map_widget.dart';
import '../map_directions_loader.dart';
import '../map_directions_switcher.dart';

class MultipleTripStopsMapWidget extends StatelessWidget {
  const MultipleTripStopsMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: const Column(
        children: [
          MapDirectionsSwitcher(),
          Expanded(
            child: Stack(
              children: [
                DayTripMapWidget(isSingleTripStop: false),
                MapDirectionsLoader(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
