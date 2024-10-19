import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../../core/constants.dart';
import '../../../../../ads/presentation/widgets/native_ad.dart';
import '../../../cubit/trip/trip_cubit.dart';
import '../add_day_trip_card.dart';
import '../day_trip_card.dart';
import '../delete_trip_button.dart';
import '../trip_header.dart';

class TripPageLoadedGridLayout extends HookWidget {
  const TripPageLoadedGridLayout({super.key});

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousDayTrips = usePrevious(switch (context.read<TripCubit>().state) {
      TripStateLoaded(:final dayTrips) => dayTrips,
      _ => null,
    });

    final dayTrips = context.select((TripCubit cubit) => switch (cubit.state) {
          TripStateLoaded(:final dayTrips) => dayTrips,
          _ => previousDayTrips ?? [],
        });

    final tripStartDate = context.select((TripCubit cubit) => cubit.state.trip.startDate);

    //Calculate crossAxisCount. Each dayTrip card takes at least 250 width
    final crossAxisCount = MediaQuery.of(context).size.width ~/ 250;

    final hasTripDescription = context.select((TripCubit cubit) => cubit.state.trip.description?.isNotEmpty ?? false);

    //Add one for add day trip card, one for the ad and one for the trip description, if it exists
    final int childCount = dayTrips.length + 2 + (hasTripDescription ? 1 : 0);

    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          minimum: defaultPagePadding,
          sliver: MultiSliver(
            children: [
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == 0) {
                      return hasTripDescription
                          ? const TripHeader()
                          : Center(child: NativeAd.trip(padding: const EdgeInsets.only(bottom: verticalSpace)));
                    } else if (index == 1 && hasTripDescription) {
                      return Center(child: NativeAd.trip(padding: const EdgeInsets.only(bottom: verticalSpace)));
                    } else if (index case _ when index == childCount - 1) {
                      return const AddDayTripCard();
                    } else {
                      return DayTripCard(
                        key: ValueKey(dayTrips[index - (hasTripDescription ? 2 : 1)].id),
                        dayTrip: dayTrips[index - (hasTripDescription ? 2 : 1)],
                        tripStartDate: tripStartDate,
                      );
                    }
                  },
                  childCount: childCount,
                ),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: verticalSpaceS,
                  crossAxisSpacing: horizontalSpaceS,
                  pattern: [
                    if (hasTripDescription) const QuiltedGridTile(1, 2),
                    const QuiltedGridTile(1, 2),
                    for (var i = 0; i < dayTrips.length; i++) const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 1),
                  ],
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: verticalSpaceL)),
              const SliverToBoxAdapter(
                child: Center(
                  child: SizedBox(
                    width: maxListViewWidth / 2,
                    child: DeleteTripButton(),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
