//Checkboxes for done trip stops
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/extensions.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

class TripStopDoneWidget extends StatelessWidget {
  const TripStopDoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDone = context.select<TripStopCubit, bool>(
      (cubit) => cubit.state.tripStop.isDone,
    );

    final colorStrength = context.isDarkMode ? 300 : 700;

    return Padding(
      padding: const EdgeInsets.only(top: verticalSpaceS),
      child: Column(
        children: [
          GestureDetector(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Text(
                LocaleKeys.completed.tr(),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: isDone ? Colors.green[colorStrength] : Colors.orange[colorStrength]),
              ),
            ),
            onTap: () => context.read<TripStopCubit>().isDoneChanged(!isDone),
          ),
          Checkbox(
            shape: const CircleBorder(),
            value: isDone,
            onChanged: (value) => context.read<TripStopCubit>().isDoneChanged(value ?? false),
          ),
        ],
      ),
    );
  }
}
