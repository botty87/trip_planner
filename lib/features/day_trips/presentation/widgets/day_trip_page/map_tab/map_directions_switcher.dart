part of '../../../pages/day_trip_page.dart';

class _MapDirectionsSwitcher extends StatelessWidget {
  const _MapDirectionsSwitcher();

  @override
  Widget build(BuildContext context) {
    final showDirections = context.select((TripStopsMapCubit cubit) => cubit.state.showDirections);

    return Column(
      children: [
        SwitchListTile.adaptive(
          title: Text(LocaleKeys.showDirections.tr()),
          value: showDirections,
          onChanged: (value) => context.read<TripStopsMapCubit>().showDirectionsChanged(value),
        ),
        if (showDirections)
          Column(
            children: [
              BlocSelector<TripStopsMapCubit, TripStopsMapState, bool>(
                selector: (state) => state.useDifferentColors,
                builder: (context, useDifferentColors) {
                  return SwitchListTile.adaptive(
                    title: Text(LocaleKeys.useDifferentColors.tr()),
                    value: useDifferentColors,
                    onChanged: (value) =>
                        context.read<TripStopsMapCubit>().useDifferentColorsChanged(value),
                  );
                },
              ),
            ],
          ),
      ],
    );
  }
}
