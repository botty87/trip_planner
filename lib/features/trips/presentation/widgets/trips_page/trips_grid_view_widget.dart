import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants.dart';
import '../../../../ads/presentation/widgets/native_ad.dart';
import '../../../domain/entities/trip.dart';
import '../../cubit/trips/trips_cubit.dart';
import 'trip_card.dart';
import 'trips_sort_mixin.dart';

class TripsGridViewWidget extends HookWidget with TripsSortMixin {
  const TripsGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Trip> trips = context.select<TripsCubit, List<Trip>>((cubit) {
      return switch (cubit.state) {
        final TripsStateLoaded loaded => getSortedTrips(userTrips: loaded.userTrips, sharedTrips: loaded.sharedTrips),
        _ => []
      };
    });

    //Use this for the animation
    final previousTrips = usePrevious(trips);

    //If the trips are empty and the previous trips are not, use the previous trips
    if (trips.isEmpty && (previousTrips?.isNotEmpty ?? false)) {
      trips = previousTrips!;
    }

    return SafeArea(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxGridViewWidth),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: defaultPagePadding,
              sliver: SliverGrid.builder(
                //3 columns
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: horizontalSpace,
                  crossAxisSpacing: verticalSpace,
                  mainAxisExtent: tripGridHeight,
                ),
                itemCount: trips.length + 1,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return TripCard(key: ValueKey(trips[index].id), trip: trips[index]);
                    case 1:
                      return NativeAd.trips(maxHeight: 250);
                    default:
                      return TripCard(key: ValueKey(trips[index - 1].id), trip: trips[index - 1]);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
