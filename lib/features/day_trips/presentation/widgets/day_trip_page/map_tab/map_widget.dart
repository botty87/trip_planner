part of '../../../pages/day_trip_page.dart';

class _MapWidget extends StatelessWidget {
  const _MapWidget();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    /* final tripStops = context.select((DayTripCubit cubit) => cubit.state.tripStops);
    final isTripStopsDirectionsToLoad =
        context.select((TripStopsMapCubit cubit) => cubit.state.isTripStopsDirectionsToLoad);

    if (isTripStopsDirectionsToLoad) {
      context.read<TripStopsMapCubit>().loadDirections(tripStops);
    }

    return MapWidget.multiple(
      mapPlaces: tripStops.map((tripStop) => tripStop.toMapPlace()).toList(),
      polylines: _getPolylines(context),
      onMarkerTap: (mapPlace) {
        final state = context.read<DayTripCubit>().state;
        final tripStop = mapPlace.maybeMap(
          existing: (mapPlace) => state.tripStops.firstWhere(
            (tripStop) => tripStop.id == mapPlace.tripStopId,
            orElse: () => throw Exception('Unexpected state'),
          ),
          orElse: () => throw Exception('Unexpected state'),
        );
        context.router.push(
          TripStopRoute(trip: state.trip, dayTrip: state.dayTrip, tripStop: tripStop),
        );
      },
    ); */
  }

  Set<Polyline> _getPolylines(BuildContext context) {
    final Set<Polyline> polylines = {};

    final showDirections =
        context.select((TripStopsMapCubit cubit) => cubit.state.dayTrip.showDirections);
    final tripStopsDirectionsUpToDate =
        context.read<TripStopsMapCubit>().state.dayTrip.tripStopsDirectionsUpToDate;

    final List<TripStopsDirections>? tripStopsDirections =
        context.select((TripStopsMapCubit cubit) => cubit.state.dayTrip.tripStopsDirections);

    if (!showDirections || !tripStopsDirectionsUpToDate) {
      return polylines;
    }

    final useDifferentColors = context
        .select((TripStopsMapCubit cubit) => cubit.state.dayTrip.useDifferentDirectionsColors);

    if (tripStopsDirections != null) {
      final List<MaterialColor> colors;
      int colorIndex;
      if (useDifferentColors) {
        colors = [
          Colors.red,
          Colors.green,
          Colors.blue,
          Colors.yellow,
          Colors.purple,
          Colors.orange,
        ];
        colorIndex = Random().nextInt(colors.length);
      } else {
        colors = [Colors.blue];
        colorIndex = 0;
      }

      for (final directions in tripStopsDirections) {
        if (directions.points?.isNotEmpty ?? false) {
          polylines.add(
            Polyline(
              polylineId: PolylineId(directions.originId + directions.destinationId),
              points: directions.points!,
              color: colors[colorIndex],
              width: 5,
            ),
          );

          if (useDifferentColors) {
            if (colorIndex >= colors.length - 1) {
              colorIndex = 0;
            } else {
              colorIndex++;
            }
          }
        }
      }
    }

    return polylines;
  }
}
