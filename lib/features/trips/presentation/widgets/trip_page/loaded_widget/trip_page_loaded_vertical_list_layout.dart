import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../../core/constants.dart';
import '../../../../../ads/presentation/widgets/native_ad.dart';
import '../add_day_trip_card.dart';
import '../day_trips_list_widget.dart';
import '../delete_trip_button.dart';
import '../trip_header.dart';

class TripPageLoadedVerticalListLayout extends StatelessWidget {
  const TripPageLoadedVerticalListLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Make sure there is a scroll controller attached to the scroll view that contains ReorderableSliverList.
    // Otherwise an error will be thrown.
    final scrollController = PrimaryScrollController.of(context);

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: maxListViewWidth),
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverPadding(
            padding: defaultPagePadding,
            sliver: MultiSliver(
              children: [
                const SliverToBoxAdapter(child: TripHeader()),
                SliverToBoxAdapter(child: NativeAd.trip(padding: const EdgeInsets.only(bottom: verticalSpace))),
                const DayTripsListWidget(
                  orientation: Orientation.portrait,
                  padding: EdgeInsets.only(bottom: verticalSpace),
                ),
                const SliverToBoxAdapter(child: AddDayTripCard()),
                const SliverToBoxAdapter(child: SizedBox(height: verticalSpaceL)),
                const SliverToBoxAdapter(child: SafeArea(child: DeleteTripButton())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
