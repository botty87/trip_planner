import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../time_picker/widgets/timepicker.dart';
import '../../../../../ui/presentation/widgets/background/background_widget_container.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

class StartTimeWidget extends StatelessWidget {
  const StartTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final startTime = context.read<DayTripCubit>().state.dayTrip.startTime;

    return BackgroundWidgetContainer(
      padding: const EdgeInsets.only(top: verticalSpace),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
