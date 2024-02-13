part of 'day_trip_section.dart';

class _ModeSelector extends StatelessWidget {
  const _ModeSelector();

  @override
  Widget build(BuildContext context) {
    final travelMode = context.select((SettingsCubit cubit) => cubit.state.settings.travelMode);

    return Center(
      child: SegmentedButton<TravelMode>(
        showSelectedIcon: false,
        segments: const [
          ButtonSegment(
            icon: Icon(Icons.directions_car),
            value: TravelMode.driving,
          ),
          ButtonSegment(
            icon: Icon(Icons.directions_walk),
            value: TravelMode.walking,
          ),
          ButtonSegment(
            icon: Icon(Icons.directions_bike),
            value: TravelMode.bicycling,
          ),
          ButtonSegment(
            icon: Icon(Icons.directions_transit),
            value: TravelMode.transit,
          ),
        ],
        selected: {travelMode},
        onSelectionChanged: (selected) =>
            context.read<SettingsCubit>().travelModeChanged(selected.first),
      ),
    );
  }
}
