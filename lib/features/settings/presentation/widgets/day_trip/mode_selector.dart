part of 'day_trip_section.dart';

class _ModeSelector extends StatelessWidget {
  const _ModeSelector();

  @override
  Widget build(BuildContext context) {
    final travelMode = context.select((SettingsCubit cubit) => cubit.state.settings.travelMode);

    return Wrap(
      spacing: horizontalSpaceXs,
      runSpacing: verticalSpaceS,
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.spaceBetween,
      children: [
        ChoiceChip(
          label: Text(LocaleKeys.driving.tr()),
          avatar: const Icon(Icons.directions_car),
          showCheckmark: false,
          selected: travelMode == TravelMode.driving,
          onSelected: (value) =>
              context.read<SettingsCubit>().travelModeChanged(TravelMode.driving),
        ),
        ChoiceChip(
          label: Text(LocaleKeys.walking.tr()),
          avatar: const Icon(Icons.directions_walk),
          showCheckmark: false,
          selected: travelMode == TravelMode.walking,
          onSelected: (value) =>
              context.read<SettingsCubit>().travelModeChanged(TravelMode.walking),
        ),
        ChoiceChip(
          label: Text(LocaleKeys.bicycling.tr()),
          avatar: const Icon(Icons.directions_bike),
          showCheckmark: false,
          selected: travelMode == TravelMode.bicycling,
          onSelected: (value) =>
              context.read<SettingsCubit>().travelModeChanged(TravelMode.bicycling),
        ),
        ChoiceChip(
          label: Text(LocaleKeys.transit.tr()),
          avatar: const Icon(Icons.directions_transit),
          showCheckmark: false,
          selected: travelMode == TravelMode.transit,
          onSelected: (value) =>
              context.read<SettingsCubit>().travelModeChanged(TravelMode.transit),
        ),
      ],
    );
  }
}
