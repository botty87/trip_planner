import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:reorderables/reorderables.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/utilities/pair.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../../../ui/widgets/day_trip/trip_stop_start_end_time_mixin.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';
import 'trip_stop_card.dart';

class TripStopsList extends HookWidget with TripStopStartEndTimeMixin {
  const TripStopsList({super.key, required GlobalKey showCaseTutorial}) : _showCaseTutorial = showCaseTutorial;

  final GlobalKey _showCaseTutorial;

  List<TripStop> _getTripStops(BuildContext context) {
    //Use this for the animation
    final previouTripStops =
        usePrevious(context.read<DayTripCubit>().state.mapOrNull(loaded: (state) => state.tripStops));

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
      return DateTime(startDate.year, startDate.month, startDate.day, startTime.hour, startTime.minute);
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

    return ReorderableSliverList(
      delegate: ReorderableSliverChildBuilderDelegate(
        (context, index) {
          final tripStopItem = tripStopStartEndTimes[index];
          final tripStop = tripStopItem.first;
          final startEndTime = tripStopItem.second;

          final rowItem = _TripStopRowItem(
            key: ValueKey(tripStop.id),
            isLastItem: index == tripStopStartEndTimes.length - 1,
            startSlidableAction: _TravelStartSlidableAction(tripStop, index),
            endSlidableAction: _TravelEndSlidableAction(tripStop, index),
            tripStop: tripStop,
            startEndTime: startEndTime,
          );

          //If it is the first item wrap it in a ShowCase
          if (index == 0) {
            return Showcase(
              key: _showCaseTutorial,
              tooltipPosition: TooltipPosition.top,
              title: LocaleKeys.tripStopSlideShowCaseTitle.tr(),
              description: LocaleKeys.tripStopSlideShowCaseBody.tr(),
              targetPadding: const EdgeInsets.only(top: verticalSpaceS),
              child: rowItem,
            );
          } else {
            return rowItem;
          }
        },
        childCount: tripStopStartEndTimes.length,
      ),
      onReorder: (oldIndex, newIndex) {},
    );
  }
}

class _TravelStartSlidableAction extends StatelessWidget {
  const _TravelStartSlidableAction(this.tripStop, this.index);

  final TripStop tripStop;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) => context.read<DayTripCubit>().toggleTripStopDone(!tripStop.isDone, index),
      backgroundColor: tripStop.isDone ? Colors.grey : Colors.green,
      foregroundColor: Colors.white,
      icon: tripStop.isDone ? Icons.close : Icons.check,
      label: tripStop.isDone ? LocaleKeys.toDo.tr() : LocaleKeys.completed.tr(),
    );
  }
}

class _TravelEndSlidableAction extends StatelessWidget {
  const _TravelEndSlidableAction(this.tripStop, this.index);

  final TripStop tripStop;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) => context.read<DayTripCubit>().toggleTripStopDelete(index),
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      icon: Icons.delete,
      label: LocaleKeys.delete.tr(),
    );
  }
}

class _TripStopRowItem extends StatelessWidget {
  const _TripStopRowItem({
    super.key,
    required this.isLastItem,
    required this.startSlidableAction,
    required this.endSlidableAction,
    required this.tripStop,
    required this.startEndTime,
  });

  final bool isLastItem;
  final Widget startSlidableAction;
  final Widget endSlidableAction;
  final TripStop tripStop;
  final StartEndTime startEndTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLastItem ? EdgeInsets.zero : const EdgeInsets.only(bottom: verticalSpaceS),
      child: Slidable(
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [startSlidableAction],
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [endSlidableAction],
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
    );
  }
}
