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

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: MapWidget.multiple(
        mapPlaces: tripStops.map((tripStop) => tripStop.toMapPlace()).toList(),
        onMarkerTap: (mapPlace) {
          final tripStop = mapPlace.maybeMap(
            existing: (mapPlace) => tripStops.firstWhere(
              (tripStop) => tripStop.id == mapPlace.tripStopId,
              orElse: () => throw Exception('Unexpected state'),
            ),
            orElse: () => throw Exception('Unexpected state'),
          );

          return context.router.push(DiscoverNewTripStopRoute(tripStop: tripStop));
        },
        useDifferentColorsForDone: false,
      ),
    );
  }
}
