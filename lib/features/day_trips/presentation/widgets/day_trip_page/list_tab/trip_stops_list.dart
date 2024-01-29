import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/utilities/pair.dart';
import '../../../../../../core/widgets/day_trip/trip_stop_start_end_time_mixin.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';
import 'travel_card.dart';
import 'trip_stop_card.dart';

class TripStopsList extends HookWidget with TripStopStartEndTimeMixin {
  const TripStopsList({super.key});

  List<TripStop> _getTripStops(BuildContext context) {
    //Use this for the animation
    final previouTripStops = usePrevious(
        context.read<DayTripCubit>().state.mapOrNull(loaded: (state) => state.tripStops));

    return context.select((DayTripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.tripStops,
          orElse: () => previouTripStops ?? [],
        ));
  }

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    final tripStops = _getTripStops(context);

    final DateTime dayTripStartDateTime = context.select((DayTripCubit cubit) {
      final startDate = cubit.state.trip.startDate;
      final startTime = cubit.state.dayTrip.startTime;
      return DateTime(
          startDate.year, startDate.month, startDate.day, startTime.hour, startTime.minute);
    });

    //this is needed to avoid the recalculation of the trip start and end times on every build, during the reordering
    final List<Pair<TripStop, StartEndTime>> tripStopStartEndTimes = [];

    //Build the list
    for (int i = 0; i < tripStops.length; i++) {
      final tripStop = tripStops[i];
      final startEndTime = getTripStartEndTimesNew(
        tripStops: tripStops,
        tripStopStartEndTimes: tripStopStartEndTimes,
        dayTripStartDateTime: dayTripStartDateTime,
        currentIndex: i,
      );
      tripStopStartEndTimes.add(Pair(tripStop, startEndTime));
    }

    return ImplicitlyAnimatedReorderableList<Pair<TripStop, StartEndTime>>(
      shrinkWrap: true,
      items: tripStopStartEndTimes,
      itemBuilder: (context, itemAnimation, tripStopItem, index) {
        final tripStop = tripStopItem.first;
        final startEndTime = tripStopItem.second;

        // Each item must be wrapped in a Reorderable widget.
        return Reorderable(
          // Each item must have an unique key.
          key: ValueKey(tripStop.id),
          builder: (context, dragAnimation, inDrag) {
            return SizeFadeTransition(
              animation: itemAnimation,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Slidable(
                    startActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [_getSlidableAction(tripStop, index)],
                    ),
                    child: Builder(builder: (context) {
                      final slidableController = Slidable.of(context);
                      return TripStopCard(
                        tripStop: tripStop,
                        tripStartEndTimes: startEndTime,
                        slidableController: slidableController,
                      );
                    }),
                  ),
                  TravelCard(tripStop: tripStop),
                ],
              ),
            );
          },
        );
      },
      areItemsTheSame: (oldItem, newItem) => oldItem == newItem,
      onReorderFinished: (item, from, to, newItems) {
        tripStopStartEndTimes.clear();
        context
            .read<DayTripCubit>()
            .reorderTripStops(from, to, newItems.map((e) => e.first).toList());
      },
    );
  }
}

Widget _getSlidableAction(TripStop tripStop, int index) {
  return SlidableAction(
    onPressed: (context) =>
        context.read<DayTripCubit>().toggleTripStopDone(!tripStop.isDone, index),
    backgroundColor: tripStop.isDone ? Colors.grey : Colors.green,
    foregroundColor: Colors.white,
    icon: tripStop.isDone ? Icons.close : Icons.check,
    label: tripStop.isDone ? LocaleKeys.toDo.tr() : LocaleKeys.done.tr(),
  );
}
