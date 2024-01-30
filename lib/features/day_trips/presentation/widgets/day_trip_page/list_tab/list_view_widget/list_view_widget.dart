import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'list_view_widget_vertical.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListViewWidgetVerticalLayout();
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
      return const ListViewWidgetVerticalLayout();
    } else {
      return OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const ListViewWidgetVerticalLayout();
          } else {
            return const _HorizontalLayout();
          }
        },
      );
    }
  }
}

class _HorizontalLayout extends StatelessWidget {
  const _HorizontalLayout();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    /* return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: Row(
        children: [
          const Expanded(child: SingleChildScrollView(child: _TripStopsList())),
          const SizedBox(width: horizontalSpaceL),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: BlocSelector<DayTripCubit, DayTripState, String?>(
                      selector: (state) => state.dayTrip.description,
                      builder: (context, description) => Column(
                        children: [
                          _DayTripDescription(headerText: description),
                          if (description != null) const SizedBox(height: verticalSpaceS),
                        ],
                      ),
                    ),
                  ),
                ),
                const _AddDayTripStopCard(),
                const SizedBox(height: verticalSpaceXL),
                _DeleteTripButton(isDeleting: isDeleting),
              ],
            ),
          ),
        ],
      ),
    ); */
  }
}
