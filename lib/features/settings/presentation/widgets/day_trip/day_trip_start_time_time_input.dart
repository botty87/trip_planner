part of 'day_trip_section.dart';

class _DayTripStartTimeInput extends StatelessWidget {
  const _DayTripStartTimeInput();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.access_time),
        const SizedBox(width: horizontalSpaceS),
        Text(LocaleKeys.defaultDayTripStartTimeHHMM.tr()),
        const Spacer(),
        BlocSelector<SettingsCubit, SettingsState, TimeOfDay>(
          selector: (state) => state.settings.defaultDayTripStartTime,
          builder: (context, defaultDayTripStartTime) {
            return TextButton(
              onPressed: () async {
                final timeOfDay = await showTimePicker(
                  context: context,
                  initialTime: defaultDayTripStartTime,
                );
                if (timeOfDay != null && context.mounted) {
                  context.read<SettingsCubit>().setDefaultDayTripStartTime(timeOfDay);
                }
              },
              child: Text(
                defaultDayTripStartTime.format(context),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            );
          },
        ),
      ],
    );
  }
}
