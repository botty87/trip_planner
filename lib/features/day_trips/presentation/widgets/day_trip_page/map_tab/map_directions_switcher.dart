import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../ui/presentation/widgets/background/background_image_wrapper.dart';
import '../../../cubit/trip_stops_map/trip_stops_map_cubit.dart';

class MapDirectionsSwitcher extends StatelessWidget with BackgroundImageMixin {
  const MapDirectionsSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final showDirections =
        context.select((TripStopsMapCubit cubit) => cubit.state.dayTrip.showDirections);

    final hasBackgroundImage = this.hasBackgroundImage(context);

    return Container(
      color: hasBackgroundImage ? Theme.of(context).scaffoldBackgroundColor : null,
      child: Column(
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
            ),
        ],
      ),
    );
  }
}
