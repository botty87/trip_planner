part of '../../pages/day_trip_page.dart';

class _StartTimeWidget extends StatelessWidget {
  const _StartTimeWidget();

  @override
  Widget build(BuildContext context) {
    return TimePicker(
      value: const TimeOfDay(hour: 8, minute: 0),
      iosStylePicker: Platform.isIOS,
      onChange: (time) {},
      hourLabel: LocaleKeys.hours.tr(),
      minuteLabel: LocaleKeys.minutes.tr(),
    );
  }
}
