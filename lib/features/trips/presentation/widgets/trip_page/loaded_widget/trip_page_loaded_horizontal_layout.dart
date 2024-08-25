import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/di/di.dart';
import '../../../../../../ui/widgets/ad/ads.dart';
import '../../../../../../ui/widgets/ad/native_ad.dart';
import '../add_day_trip_card.dart';
import '../day_trips_list_widget.dart';
import '../delete_trip_button.dart';
import '../trip_header.dart';

class TripPageLoadedHorizontalLayout extends StatelessWidget {
  const TripPageLoadedHorizontalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = PrimaryScrollController.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxRowWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: const [DayTripsListWidget(orientation: Orientation.landscape)],
                ),
              ),
            ),
            const SizedBox(width: horizontalSpaceL),
            Flexible(
              child: SafeArea(
                minimum: const EdgeInsets.only(bottom: pageVerticalPadding),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                  child: Column(
                    children: [
                      NativeAd(ads: getIt<AdsTripNative>()),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Flexible(child: TripHeader()),
                            ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: maxListViewWidth * 0.9),
                              child: const AddDayTripCard(),
                            ),
                            const SizedBox(height: verticalSpaceXL),
                            const DeleteTripButton(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
