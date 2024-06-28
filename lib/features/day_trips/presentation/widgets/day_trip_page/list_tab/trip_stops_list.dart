import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/utilities/pair.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../../ui/presentation/widgets/day_trip/trip_stop_start_end_time_mixin.dart';
import '../../../../../ui/presentation/widgets/generics/transparent_list_decorator.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';
import 'trip_stop_card.dart';
import 'trip_stop_details_row.dart';

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
                  TransparentListDecorator(
                    animation: dragAnimation,
                    child: Slidable(
                      startActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [_gettravelStartSlidableAction(tripStop, index)],
                      ),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [_getTravelEndSlidableAction(tripStop, index)],
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
                  ),
                  TripStopDetailsRow(tripStop),
                ],
              ),
            );
          },
        );
      },
      areItemsTheSame: (oldItem, newItem) => oldItem == newItem,
      onReorderFinished: (item, from, to, newItems) {
        final newTripStops = newItems.map((e) => e.first).toList();

        if (!listEquals(newTripStops, tripStops)) {
          tripStopStartEndTimes.clear();
          context.read<DayTripCubit>().reorderTripStops(from, to, newTripStops);
        }
      },
    );
  }

  Widget _gettravelStartSlidableAction(TripStop tripStop, int index) {
    return SlidableAction(
      onPressed: (context) =>
          context.read<DayTripCubit>().toggleTripStopDone(!tripStop.isDone, index),
      backgroundColor: tripStop.isDone ? Colors.grey : Colors.green,
      foregroundColor: Colors.white,
      icon: tripStop.isDone ? Icons.close : Icons.check,
      label: tripStop.isDone ? LocaleKeys.toDo.tr() : LocaleKeys.completed.tr(),
    );
  }

  Widget _getTravelEndSlidableAction(TripStop tripStop, int index) {
    return SlidableAction(
      onPressed: (context) => context.read<DayTripCubit>().toggleTripStopDelete(index),
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      icon: Icons.delete,
      label: LocaleKeys.delete.tr(),
    );
  }
}
