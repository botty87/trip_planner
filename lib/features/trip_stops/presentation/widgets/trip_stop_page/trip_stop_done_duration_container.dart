import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/utilities/extensions.dart';
import 'trip_stop_done_widget.dart';
import 'trip_stop_duration_widget.dart';

class TripStopDoneDurationContainer extends StatelessWidget {
  const TripStopDoneDurationContainer({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: context.hasBackgroundImage
          ? BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
              borderRadius: BorderRadius.circular(8),
            )
          : null,
      padding: context.hasBackgroundImage
          ? const EdgeInsets.only(
              bottom: verticalSpaceXs, right: horizontalSpace, left: horizontalSpace)
          : null,
      width: double.infinity,
      child: const Wrap(
        alignment: WrapAlignment.spaceAround,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: horizontalSpace,
        children: [TripStopDurationWidget(), TripStopDoneWidget()],
      ),
    );
  }
}
