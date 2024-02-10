part of 'day_trip_section.dart';

class _ShowDirectionsSwitch extends StatelessWidget {
  const _ShowDirectionsSwitch();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.directions),
        const SizedBox(width: horizontalSpaceS),
        Text(LocaleKeys.showDirections.tr()),
        const Spacer(),
        BlocSelector<SettingsCubit, SettingsState, bool>(
          selector: (state) => state.settings.showDirections,
          builder: (context, showDirections) {
            return Switch.adaptive(
              value: showDirections,
              onChanged: (value) => context.read<SettingsCubit>().setShowDirections(value),
            );
          },
        ),
      ],
    );
  }
}
