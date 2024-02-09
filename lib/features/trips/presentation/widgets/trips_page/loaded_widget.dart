import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../cubit/trips/trips_cubit.dart';
import 'no_trips_widget.dart';
import 'trips_list_widget.dart';

class LoadedWidget extends HookWidget {
  const LoadedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousHasTrips = usePrevious(context.select<TripsCubit, bool?>(
        (cubit) => cubit.state.whenOrNull(loaded: (trips) => trips.isNotEmpty)));

    final hasTrips = context.select<TripsCubit, bool>((cubit) => cubit.state.maybeWhen(
          loaded: (trips) => trips.isNotEmpty,
          orElse: () => previousHasTrips ?? false,
        ));

    return hasTrips ? TripsListWidget() : const NoTripsWidget();
  }
}
