import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../../core/constants.dart';
import '../../../../../ads/presentation/widgets/native_ad.dart';
import '../add_day_trip_card.dart';
import '../delete_trip_button.dart';
import '../list/day_trips_list_widget.dart';
import '../trip_header.dart';

class TripPageLoadedHorizontalListLayout extends StatelessWidget {
  const TripPageLoadedHorizontalListLayout({super.key});

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
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                child: CustomScrollView(
                  slivers: [
                    SliverSafeArea(
                      minimum: const EdgeInsets.only(bottom: pageVerticalPadding),
                      sliver: MultiSliver(
                        children: [
                          SliverToBoxAdapter(
                            child: ConstrainedBox(
                              //In case of error the height must be at maximum 1/3 ot the container height
                              constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.33),
                              child: NativeAd.trip(),
                            ),
                          ),
                          SliverFillRemaining(
                            hasScrollBody: false,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
