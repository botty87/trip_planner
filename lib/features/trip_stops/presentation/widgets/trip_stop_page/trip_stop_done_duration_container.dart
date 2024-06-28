import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../ui/presentation/widgets/background/background_image_wrapper.dart';
import 'trip_stop_done_widget.dart';
import 'trip_stop_duration_widget.dart';

class TripStopDoneDurationContainer extends StatelessWidget with BackgroundImageMixin {
  const TripStopDoneDurationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final hasBackgroundImage = this.hasBackgroundImage(context);

    return Container(
      decoration: hasBackgroundImage
          ? BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
              borderRadius: BorderRadius.circular(8),
            )
          : null,
      padding: hasBackgroundImage
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
