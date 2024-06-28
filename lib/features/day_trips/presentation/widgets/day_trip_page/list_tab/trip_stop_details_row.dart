import 'package:auto_route/auto_route.dart';
import 'package:duration_picker/duration_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../../core/error/exceptions.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';
import 'travel_card.dart';
import 'trip_stop_placeholder_card.dart';

class TripStopDetailsRow extends StatelessWidget {
  final TripStop tripStop;

  const TripStopDetailsRow(this.tripStop, {super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: tripStop.placeholder != null
          ? ActionPane(
              motion: const ScrollMotion(),
              children: [_getPlaceholderStartSlidableAction(context)],
            )
          : null,
      endActionPane: tripStop.placeholder == null
          ? ActionPane(
              motion: const ScrollMotion(),
              children: [_getPlaceholderEndSlidableAction(context)],
            )
          : null,
      child: SizedBox(
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            TravelCard(tripStop: tripStop),
            if (tripStop.placeholder != null) TripStopPlaceholderCard(tripStop.placeholder!),
          ],
        ),
      ),
    );
  }

  Widget _getPlaceholderStartSlidableAction(BuildContext context) {
    return SlidableAction(
      onPressed: (context) =>
          context.read<DayTripCubit>().removePlaceholderFromTripStop(tripStop.id),
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      icon: Icons.delete,
      label: LocaleKeys.placeholder.tr(),
    );
  }

  Widget _getPlaceholderEndSlidableAction(BuildContext context) {
    return SlidableAction(
      onPressed: (context) => _showDialog(context),
      backgroundColor: Colors.yellow,
      foregroundColor: Colors.black,
      icon: Icons.add,
      label: LocaleKeys.placeholder.tr(),
    );
  }

  _showDialog(BuildContext context) {
    final dayTripCubit = context.read<DayTripCubit>();
    dayTripCubit.showEditTripStopPlaceholderDialog(tripStop);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: Text(LocaleKeys.addPlaceholder.tr()),
          content: _DialogContent(dayTripCubit),
          actions: [
            TextButton(
              onPressed: () {
                dayTripCubit.cancelEditTripStopPlaceholderDialog();
                context.maybePop();
              },
              child: Text(LocaleKeys.cancel.tr()),
            ),
            TextButton(
              onPressed: () {
                dayTripCubit.addPlaceholderToTripStop(tripStop.id);
                context.maybePop();
              },
              child: Text(LocaleKeys.add.tr()),
            ),
          ],
        );
      },
    );
  }
}

class _DialogContent extends HookWidget {
  final DayTripCubit _dayTripCubit;

  const _DialogContent(this._dayTripCubit);

  @override
  Widget build(BuildContext context) {
    final textEditingControllerName = useTextEditingController()
      ..text = switch (_dayTripCubit.state) {
        final DayTripStateLoaded loadedState => loadedState.tripStopPlaceholderEditing?.name ?? '',
        _ => throw const UnexpectedStateException(),
      };

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoTextField(
          controller: textEditingControllerName,
          placeholder: LocaleKeys.nameOptional.tr(),
          onChanged: (value) => _dayTripCubit.updateTripStopPlaceholderName(value),
        ),
        BlocSelector<DayTripCubit, DayTripState, int>(
          bloc: _dayTripCubit,
          selector: (state) => switch (state) {
            final DayTripStateLoaded loadedState =>
              loadedState.tripStopPlaceholderEditing?.duration ?? 0,
            _ => throw const UnexpectedStateException(),
          },
          builder: (context, duration) {
            return DurationPicker(
              duration: Duration(minutes: duration),
              onChange: (duration) =>
                  _dayTripCubit.updateTripStopPlaceholderDuration(duration.inMinutes),
            );
          },
        ),
      ],
    );
  }
}
