part of '../../../pages/day_trip_page.dart';

class _MapDirectionsSwitcher extends StatelessWidget {
  const _MapDirectionsSwitcher();

  @override
  Widget build(BuildContext context) {
    final showDirections =
        context.select((TripStopsMapCubit cubit) => cubit.state.dayTrip.showDirections);

    return Column(
      children: [
        SwitchListTile.adaptive(
          title: Text(LocaleKeys.showDirections.tr()),
          value: showDirections,
          onChanged: (value) => context.read<TripStopsMapCubit>().showDirectionsChanged(value),
        ),
        if (showDirections)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BlocSelector<TripStopsMapCubit, TripStopsMapState, bool>(
                selector: (state) => state.dayTrip.useDifferentDirectionsColors,
                builder: (context, useDifferentColors) {
                  return SwitchListTile.adaptive(
                    title: Text(LocaleKeys.useDifferentColors.tr()),
                    value: useDifferentColors,
                    onChanged: (value) =>
                        context.read<TripStopsMapCubit>().useDifferentColorsChanged(value),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: verticalSpaceXs,
                    bottom: verticalSpaceS,
                    left: horizontalSpaceS,
                    right: horizontalSpaceS),
                child: BlocSelector<TripStopsMapCubit, TripStopsMapState, TravelMode>(
                  selector: (state) => state.dayTrip.travelMode,
                  builder: (context, travelMode) {
                    return Wrap(
                      spacing: horizontalSpaceS,
                      runSpacing: verticalSpaceS,
                      alignment: WrapAlignment.spaceEvenly,
                      runAlignment: WrapAlignment.spaceBetween,
                      children: [
                        ChoiceChip(
                          label: Text(LocaleKeys.driving.tr()),
                          avatar: const Icon(Icons.directions_car),
                          showCheckmark: false,
                          selected: travelMode == TravelMode.driving,
                          onSelected: (value) => context
                              .read<TripStopsMapCubit>()
                              .travelModeChanged(TravelMode.driving),
                        ),
                        ChoiceChip(
                          label: Text(LocaleKeys.walking.tr()),
                          avatar: const Icon(Icons.directions_walk),
                          showCheckmark: false,
                          selected: travelMode == TravelMode.walking,
                          onSelected: (value) => context
                              .read<TripStopsMapCubit>()
                              .travelModeChanged(TravelMode.walking),
                        ),
                        ChoiceChip(
                          label: Text(LocaleKeys.bicycling.tr()),
                          avatar: const Icon(Icons.directions_bike),
                          showCheckmark: false,
                          selected: travelMode == TravelMode.bicycling,
                          onSelected: (value) => context
                              .read<TripStopsMapCubit>()
                              .travelModeChanged(TravelMode.bicycling),
                        ),
                        ChoiceChip(
                          label: Text(LocaleKeys.transit.tr()),
                          avatar: const Icon(Icons.directions_transit),
                          showCheckmark: false,
                          selected: travelMode == TravelMode.transit,
                          onSelected: (value) => context
                              .read<TripStopsMapCubit>()
                              .travelModeChanged(TravelMode.transit),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
      ],
    );
  }
}
