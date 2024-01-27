import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import '../add_day_trip_card.dart';
import '../day_trips_list_widget.dart';
import '../delete_trip_button.dart';
import '../trip_header.dart';

class TripPageLoadedHorizontalLayout extends StatelessWidget {
  const TripPageLoadedHorizontalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: Row(
        children: [
          const Expanded(child: DayTripsListWidget(orientation: Orientation.landscape)),
          const SizedBox(width: horizontalSpaceL),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(bottom: verticalSpaceXL),
              children: const [
                TripHeader(),
                AddDayTripCard(),
                SizedBox(height: verticalSpaceXL),
                DeleteTripButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
