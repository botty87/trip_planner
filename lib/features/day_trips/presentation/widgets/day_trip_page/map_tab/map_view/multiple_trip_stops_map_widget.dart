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
          alignment: Alignment.bottomLeft,
          child: ClipRRect(
            child: Padding(
              padding: const EdgeInsets.only(bottom: pageVerticalPadding, left: pageHorizontalPadding),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: maxListViewWidth / 2),
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
