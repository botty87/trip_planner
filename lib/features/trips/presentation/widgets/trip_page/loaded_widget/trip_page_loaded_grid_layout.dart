import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

    //Calculate crossAxisCount.
    final crossAxisCount = MediaQuery.of(context).size.width ~/ gridViewItemWidth;

    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          minimum: defaultPagePadding,
          sliver: MultiSliver(
            children: [
              SliverPadding(
                padding: const EdgeInsets.only(bottom: verticalSpaceS),
                sliver: SliverToBoxAdapter(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 250),
                    child: const _HeaderSection(),
                  ),
                ),
              ),
              SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: verticalSpaceS,
                  crossAxisSpacing: horizontalSpaceS,
                ),
                itemCount: dayTrips.length + 1,
                itemBuilder: (context, index) {
                  if (index < dayTrips.length) {
                    return DayTripCard(
                      key: ValueKey(dayTrips[index].id),
                      dayTrip: dayTrips[index],
                      tripStartDate: tripStartDate,
                    );
                  } else {
                    return const AddDayTripCard();
                  }
                },
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

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    final hasTripDescription = context.select((TripCubit cubit) => cubit.state.trip.description?.isNotEmpty ?? false);

    return Row(
      children: [
        if (hasTripDescription) ...[
          const Expanded(child: TripHeader()),
          const SizedBox(width: horizontalSpaceS),
        ],
        Expanded(child: NativeAd.trip(padding: const EdgeInsets.only(bottom: verticalSpace))),
      ],
    );
  }
}
