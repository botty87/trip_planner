part of '../../../pages/discover_new_trip_stops_page.dart';

class _DiscoverNewTripStopsMapTab extends HookWidget {
  const _DiscoverNewTripStopsMapTab();

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    final tripStops = context.read<DiscoverNewTripStopsCubit>().state.maybeMap(
          loaded: (state) => state.tripStops,
          orElse: () => throw Exception('Unexpected state'),
        );

    return MapWidget.multiple(
      tripStops: tripStops,
      onMarkerTap: (tripStop) => context.router.push(DiscoverNewTripStopRoute(tripStop: tripStop)),
      useDifferentColorsForDone: false,
    );
  }
}
