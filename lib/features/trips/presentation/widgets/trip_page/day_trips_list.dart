import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:implicitly_animated_reorderable_list_2/implicitly_animated_reorderable_list_2.dart';

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

    return ImplicitlyAnimatedReorderableList<DayTrip>(
      shrinkWrap: true,
      items: dayTrips,
      itemBuilder: (context, itemAnimation, dayTrip, index) {
        // Each item must be wrapped in a Reorderable widget.
        return Reorderable(
          // Each item must have an unique key.
          key: ValueKey(dayTrip),
          // The animation of the Reorderable builder can be used to
          // change to appearance of the item between dragged and normal
          // state. For example to add elevation when the item is being dragged.
          // This is not to be confused with the animation of the itemBuilder.
          // Implicit animations (like AnimatedContainer) are sadly not yet supported.
          builder: (context, dragAnimation, inDrag) {
            return Padding(
              padding: const EdgeInsets.only(bottom: verticalSpace),
              child: TransparentListDecorator(
                index: index,
                animation: dragAnimation,
                child: DayTripCard(
                  dayTrip: dayTrip,
                  tripStartDate: tripStartDate,
                ),
              ),
            );
          },
        );
      },
      areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
      onReorderFinished: (item, from, to, newItems) {
        //context.read<TripCubit>().reorderDayTrips(from, to);
      },
    );
  }
}
