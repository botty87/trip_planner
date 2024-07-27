import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../cubit/trip_stops_map/trip_stops_map_cubit.dart';

class MapDirectionsSwitcher extends HookWidget {
  const MapDirectionsSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final showDirections = useState(false);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(bottom: verticalSpaceXs),
            //Slide and fade animation
            child: AnimatedSlide(
              duration: const Duration(milliseconds: 300),
              offset: showDirections.value ? const Offset(0, 0) : const Offset(-2, 0),
              curve: Curves.easeInOut,
              child: const _OpenWidget(),
            )),
        FloatingActionButton(
          onPressed: () => showDirections.value = !showDirections.value,
          child: showDirections.value ? const Icon(Icons.done) : const Icon(Icons.tune),
        ),
      ],
    );
  }
}

class _OpenWidget extends StatelessWidget {
  const _OpenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final showDirections = context.select((TripStopsMapCubit cubit) => cubit.state.dayTrip.showDirections);

    return Card(
      color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 200),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SwitchListTile.adaptive(
              title: Text(LocaleKeys.showDirections.tr()),
              value: showDirections,
              onChanged: (value) => context.read<TripStopsMapCubit>().showDirectionsChanged(value),
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              child: showDirections
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        BlocSelector<TripStopsMapCubit, TripStopsMapState, bool>(
                          selector: (state) => state.dayTrip.useDifferentDirectionsColors,
                          builder: (context, useDifferentColors) {
                            return SwitchListTile.adaptive(
                              title: Text(LocaleKeys.differentColors.tr()),
                              value: useDifferentColors,
                              onChanged: (value) => context.read<TripStopsMapCubit>().useDifferentColorsChanged(value),
                            );
                          },
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: verticalSpaceXs,
                                bottom: verticalSpaceS,
                                left: horizontalSpaceS,
                                right: horizontalSpaceS),
                            child: BlocSelector<TripStopsMapCubit, TripStopsMapState, TravelMode>(
                              selector: (state) => state.dayTrip.travelMode,
                              builder: (context, travelMode) {
                                return SegmentedButton<TravelMode>(
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
                                      context.read<TripStopsMapCubit>().travelModeChanged(selected.first),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    )
                  : const SizedBox.shrink(),
            )
          ],
        ),
      ),
    );
  }
}
