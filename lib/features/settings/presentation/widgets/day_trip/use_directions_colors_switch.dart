part of 'day_trip_section.dart';

class _UseDirectionsColorsSwitch extends StatelessWidget {
  const _UseDirectionsColorsSwitch();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.color_lens),
        const SizedBox(width: horizontalSpaceS),
        Text(LocaleKeys.useDifferentDirectionsColors.tr()),
        const Spacer(),
        BlocSelector<SettingsCubit, SettingsState, bool>(
          selector: (state) => state.settings.useDifferentDirectionsColors,
          builder: (context, useDifferentDirectionsColors) {
            return Switch.adaptive(
              value: useDifferentDirectionsColors,
              onChanged: (value) =>
                  context.read<SettingsCubit>().setUseDifferentDirectionsColors(value),
            );
          },
        ),
      ],
    );
  }
}
