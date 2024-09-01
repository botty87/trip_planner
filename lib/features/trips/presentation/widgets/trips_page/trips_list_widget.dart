import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/di/di.dart';
import '../../../../../core/utilities/extensions.dart';
import '../../../../../ui/widgets/ad/native_ad.dart';
import '../../../domain/entities/trip.dart';
import '../../cubit/trips/trips_cubit.dart';
import 'trip_card.dart';

class TripsListWidget extends HookWidget {
  final backgroundsRef = getIt<FirebaseStorage>().backgroundsRef;

  TripsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Trip> trips = context.select<TripsCubit, List<Trip>>((cubit) {
      return switch (cubit.state) {
        final TripsStateLoaded loaded => _getTrips(loaded.userTrips, loaded.sharedTrips),
        _ => []
      };
    });

    //Use this for the animation
    final previousTrips = usePrevious(trips);

    //If the trips are empty and the previous trips are not, use the previous trips
    if (trips.isEmpty && (previousTrips?.isNotEmpty ?? false)) {
      trips = previousTrips!;
    }

    //Divide the trips in two groups: the first 3, then ad and then the last trips
    final firstTrip = trips.first;
    final otherTrips = trips.length > 1 ? trips.sublist(1) : null;

    return SafeArea(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxListViewWidth),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: defaultPagePadding,
              sliver: MultiSliver(
                children: [
                  SliverToBoxAdapter(child: TripCard(key: ValueKey(firstTrip.id), trip: firstTrip)),
                  SliverToBoxAdapter(
                    child: NativeAd.trips(
                      padding: const EdgeInsets.only(top: verticalSpace),
                    ),
                  ),
                  if (otherTrips != null)
                    SliverPadding(
                      padding: const EdgeInsets.only(top: verticalSpaceS),
                      sliver: SliverList.separated(
                        itemBuilder: (context, index) =>
                            TripCard(key: ValueKey(otherTrips[index].id), trip: otherTrips[index]),
                        separatorBuilder: (context, index) => const SizedBox(height: verticalSpace),
                        itemCount: otherTrips.length,
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Trip> _getTrips(List<Trip> userTrips, List<Trip> sharedTrips) {
    final List<Trip> trips = [...userTrips, ...sharedTrips];

    trips.sort((a, b) => a.name.compareTo(b.name));
    return trips;
  }
}
