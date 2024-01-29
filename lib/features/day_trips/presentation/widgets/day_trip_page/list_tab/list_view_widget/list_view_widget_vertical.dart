import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../../../../core/constants.dart';
import '../add_day_trip_stop_card.dart';
import '../day_trip_description.dart';
import '../delete_day_trip_button.dart';
import '../start_time_widget.dart';
import '../trip_stops_list.dart';

class ListViewWidgetVerticalLayout extends StatelessWidget {
  const ListViewWidgetVerticalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
          ? constraints.maxWidth * 0.8
          : constraints.maxWidth;

      return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: ListView(
          padding: defaultPagePadding,
          children: const [
            StartTimeWidget(),
            SizedBox(height: verticalSpaceS),
            DayTripDescription(),
            TripStopsList(),
            AddDayTripStopCard(),
            SizedBox(height: verticalSpaceL),
            SafeArea(child: DeleteDayTripButton()),
          ],
        ),
      );
    });
  }
}
