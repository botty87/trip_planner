import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../../../core/constants.dart';
import '../add_day_trip_card.dart';
import '../day_trips_list_widget.dart';
import '../delete_trip_button.dart';
import '../trip_header.dart';

class TripPageLoadedVerticalLayout extends StatelessWidget {
  const TripPageLoadedVerticalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
            ? constraints.maxWidth * 0.8
            : constraints.maxWidth;

        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
          ),
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
      },
    );
  }
}
