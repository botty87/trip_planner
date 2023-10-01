part of '../../pages/day_trip_page.dart';

class _StartTimeWidget extends StatelessWidget {
  const _StartTimeWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(LocaleKeys.startTime.tr(), style: Theme.of(context).textTheme.titleLarge),
        TimePicker(
          value: const TimeOfDay(hour: 8, minute: 0),
          iosStylePicker: false,
          onChange: (time) => context.read<DayTripCubit>().startTimeChanged(time),
          hourLabel: LocaleKeys.hours.tr(),
          minuteLabel: LocaleKeys.minutes.tr(),
        ),
      ],
    );
  }
}
