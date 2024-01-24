import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../../core/constants.dart';
import 'add_day_trip_card.dart';
import 'day_trips_list.dart';
import 'delete_trip_button.dart';
import 'trip_header.dart';

class TripPageLoadedWidget extends HookWidget {
  const TripPageLoadedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
      return const _VerticalLayout();
    } else {
      return OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const _VerticalLayout();
          } else {
            return const _HorizontalLayout();
          }
        },
      );
    }
  }
}

class _VerticalLayout extends StatelessWidget {
  const _VerticalLayout();

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
          child: const Padding(
            padding: EdgeInsets.only(bottom: verticalSpaceXL),
            child: Column(
              //padding: defaultPagePadding,
              children: [
                TripHeader(),
                DayTripsList(orientation: Orientation.portrait),
                AddDayTripCard(),
                SizedBox(height: verticalSpaceL),
                DeleteTripButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _HorizontalLayout extends StatelessWidget {
  const _HorizontalLayout();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: Row(
        children: [
          const Expanded(child: DayTripsList(orientation: Orientation.landscape)),
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
