import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import '../add_day_trip_card.dart';
import '../day_trips_list_widget.dart';
import '../delete_trip_button.dart';
import '../trip_header.dart';

class TripPageLoadedVerticalLayout extends StatelessWidget {
  const TripPageLoadedVerticalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: maxListViewWidth),
      child: ListView(
        padding: defaultPagePadding,
        children: const [
          TripHeader(),
          DayTripsListWidget(orientation: Orientation.portrait),
          AddDayTripCard(),
          SizedBox(height: verticalSpaceL),
          SafeArea(child: DeleteTripButton()),
        ],
      ),
    );
  }
}
