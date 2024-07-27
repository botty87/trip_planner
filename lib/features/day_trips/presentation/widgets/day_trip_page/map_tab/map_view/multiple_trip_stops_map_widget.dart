import 'package:flutter/material.dart';

import '../../../../../../../core/constants.dart';
import '../day_trip_map_widget.dart';
import '../map_directions_loader.dart';
import '../map_directions_switcher.dart';

class MultipleTripStopsMapWidget extends StatelessWidget {
  const MultipleTripStopsMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const DayTripMapWidget(isSingleTripStop: false),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            //The 70 is the width of the map control buttons
            padding: const EdgeInsets.only(
                top: pageVerticalPadding, left: pageHorizontalPadding + 70, right: pageHorizontalPadding + 70),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: maxListViewWidth),
              child: Card(
                color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
                child: const MapDirectionsSwitcher(),
              ),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topCenter,
          child: MapDirectionsLoader(),
        ),
      ],
    );
  }
}
