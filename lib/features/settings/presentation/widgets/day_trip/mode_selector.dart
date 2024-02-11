part of 'day_trip_section.dart';

class _ModeSelector extends StatelessWidget {
  const _ModeSelector();

  @override
  Widget build(BuildContext context) {
    final travelMode = context.select((SettingsCubit cubit) => cubit.state.settings.travelMode);

    return SegmentedButton<TravelMode>(
      segments: [
        ButtonSegment(
          label: Text(LocaleKeys.driving.tr()),
          icon: const Icon(Icons.directions_car),
          value: TravelMode.driving,
        ),
        ButtonSegment(
          label: Text(LocaleKeys.walking.tr()),
          icon: const Icon(Icons.directions_walk),
          value: TravelMode.walking,
        ),
        ButtonSegment(
          label: Text(LocaleKeys.bicycling.tr()),
          icon: const Icon(Icons.directions_bike),
          value: TravelMode.bicycling,
        ),
        ButtonSegment(
          label: Text(LocaleKeys.transit.tr()),
          icon: const Icon(Icons.directions_transit),
          value: TravelMode.transit,
        ),
      ],
      selected: {travelMode},
      onSelectionChanged: (selected) =>
          context.read<SettingsCubit>().travelModeChanged(selected.first),
    );
  }
}
