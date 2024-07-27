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
            padding: const EdgeInsets.only(
                top: pageVerticalPadding, left: pageHorizontalPadding, right: pageHorizontalPadding),
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
