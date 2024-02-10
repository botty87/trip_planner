import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/di/di.dart';
import '../../../../../core/utilities/extensions.dart';
import '../../../domain/entities/trip.dart';
import '../../cubit/trips/trips_cubit.dart';
import 'trip_card.dart';

class TripsListWidget extends HookWidget {
  final backgroundsRef = getIt<FirebaseStorage>().backgroundsRef;

  TripsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousHasTrips = usePrevious(context.select<TripsCubit, List<Trip>?>(
        (cubit) => cubit.state.whenOrNull(loaded: (trips) => trips)));

    final trips = context.select<TripsCubit, List<Trip>>((cubit) => cubit.state.maybeWhen(
          loaded: (trips) => trips,
          orElse: () => previousHasTrips ?? [],
        ));

    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
            ? constraints.maxWidth * 0.8
            : constraints.maxWidth;

        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: ListView.separated(
            padding: defaultPagePadding,
            itemCount: trips.length,
            itemBuilder: (context, index) => TripCard(trip: trips[index]),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: verticalSpace),
          ),
        );
      }),
    );
  }
}
