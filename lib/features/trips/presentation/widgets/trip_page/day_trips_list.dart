import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/widgets/transparent_list_decorator.dart';
import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../cubit/trip/trip_cubit.dart';
import 'day_trip_card.dart';

class DayTripsList extends HookWidget {
  const DayTripsList({super.key});

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousHasDayTrips = usePrevious(context.select<TripCubit, bool?>(
        (cubit) => cubit.state.whenOrNull(loaded: (trip, dayTrips) => dayTrips.isNotEmpty)));

    final hasDayTrips = context.select((TripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.dayTrips.isNotEmpty,
          orElse: () => previousHasDayTrips ?? false,
        ));

    if (hasDayTrips) {
      return const Padding(
        padding: EdgeInsets.only(bottom: verticalSpaceXs),
        child: _List(),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

class _List extends HookWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousDayTrips = usePrevious(context.select<TripCubit, List<DayTrip>?>(
        (cubit) => cubit.state.whenOrNull(loaded: (trip, dayTrips) => dayTrips)));

    final dayTrips = context.select((TripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.dayTrips,
          orElse: () => previousDayTrips ?? [],
        ));
    final tripStartDate = context.select((TripCubit cubit) => cubit.state.trip.startDate);

    return ReorderableListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceXs),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dayTrips.length,
      proxyDecorator: (child, index, animation) {
        return TransparentListDecorator(
          index: index,
          animation: animation,
          child: child,
        );
      },
      itemBuilder: (context, index) {
        final dayTrip = dayTrips[index];
        return Padding(
          key: ValueKey(dayTrip.id),
          padding: const EdgeInsets.only(bottom: verticalSpace),
          child: DayTripCard(
            dayTrip: dayTrip,
            tripStartDate: tripStartDate,
          ),
        );
      },
      onReorder: (oldIndex, newIndex) {
        context.read<TripCubit>().reorderDayTrips(oldIndex, newIndex);
      },
    );
  }
}
