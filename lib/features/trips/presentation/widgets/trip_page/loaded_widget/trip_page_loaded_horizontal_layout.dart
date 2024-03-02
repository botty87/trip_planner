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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: Row(
        children: [
          Expanded(child: DayTripsListWidget(orientation: Orientation.landscape)),
          SizedBox(width: horizontalSpaceL),
          Expanded(
            child: SafeArea(
              minimum: EdgeInsets.only(bottom: pageVerticalPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: SingleChildScrollView(child: TripHeader())),
                  AddDayTripCard(),
                  SizedBox(height: verticalSpaceXL),
                  DeleteTripButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
