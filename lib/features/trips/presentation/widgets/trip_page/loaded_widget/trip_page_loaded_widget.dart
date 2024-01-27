import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'trip_page_loaded_horizontal_layout.dart';
import 'trip_page_loaded_vertical_layout.dart';

class TripPageLoadedWidget extends HookWidget {
  //Used for testing to avoid ResponsiveBreakpoints.of(context) trouble
  final bool isTest;
  const TripPageLoadedWidget({super.key, this.isTest = false});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE) && !isTest) {
      return const TripPageLoadedVerticalLayout();
    } else {
      return OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const TripPageLoadedVerticalLayout();
          } else {
            return const TripPageLoadedHorizontalLayout();
          }
        },
      );
    }
  }
}



