import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/di/di.dart';
import '../../../../../../ui/widgets/ad/ads.dart';
import '../../../../../../ui/widgets/ad/native_ad.dart';
import '../add_day_trip_card.dart';
import '../day_trips_list_widget.dart';
import '../delete_trip_button.dart';
import '../trip_header.dart';

class TripPageLoadedVerticalLayout extends StatelessWidget {
  const TripPageLoadedVerticalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Make sure there is a scroll controller attached to the scroll view that contains ReorderableSliverList.
    // Otherwise an error will be thrown.
    final scrollController = PrimaryScrollController.of(context);

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: maxListViewWidth),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            const SliverToBoxAdapter(child: TripHeader()),
            SliverToBoxAdapter(child: NativeAd(ads: getIt<AdsTripNative>())),
            const DayTripsListWidget(orientation: Orientation.portrait),
            const SliverToBoxAdapter(child: SizedBox(height: verticalSpaceL)),
            const SliverToBoxAdapter(child: AddDayTripCard()),
            const SliverToBoxAdapter(child: SizedBox(height: verticalSpaceL)),
            const SliverPadding(
              padding: EdgeInsets.only(bottom: pageVerticalPadding),
              sliver: SliverToBoxAdapter(child: SafeArea(child: DeleteTripButton())),
            ),
          ],
        ),
      ),
    );
  }
}
