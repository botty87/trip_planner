import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/widgets/background_wrapper_widget.dart';
import '../../../../../time_picker/widgets/timepicker.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

class StartTimeWidget extends StatelessWidget with BackgroundImageMixin {
  const StartTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final startTime = context.read<DayTripCubit>().state.dayTrip.startTime;

    final hasBackgroundImage = this.hasBackgroundImage(context);

    return Container(
      padding:
          hasBackgroundImage ? const EdgeInsets.only(top: verticalSpace) : const EdgeInsets.all(0),
      decoration: hasBackgroundImage
          ? BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
              borderRadius: BorderRadius.circular(8),
            )
          : null,
      child: Column(
        children: [
          Text(LocaleKeys.startTime.tr(), style: Theme.of(context).textTheme.titleLarge),
          TimePicker(
            value: startTime,
            iosStylePicker: false,
            onChange: (time) => context.read<DayTripCubit>().startTimeChanged(time),
            hourLabel: LocaleKeys.hours.tr(),
            minuteLabel: LocaleKeys.minutes.tr(),
          ),
        ],
      ),
    );
  }
}
