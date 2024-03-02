import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../../core/error/exceptions.dart';
import '../../../../../../core/routes/app_router.gr.dart';
import '../../../../../map/domain/entities/map_place.dart';
import '../../../../../map/presentation/widgets/map_widget.dart';
import '../../../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../../domain/entities/trip_stops_directions.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';
import '../../../cubit/trip_stops_map/trip_stops_map_cubit.dart';

class DayTripMapWidget extends HookWidget {
  final bool isSingleTripStop;

  const DayTripMapWidget({super.key, required this.isSingleTripStop});

  List<TripStop> _getTripStops(BuildContext context) {
    //Use this for the animation
    final previouTripStops = usePrevious(
        context.read<DayTripCubit>().state.mapOrNull(loaded: (state) => state.tripStops));

    return context.select((DayTripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.tripStops,
          orElse: () => previouTripStops ?? [],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final tripStops = _getTripStops(context);

    if (isSingleTripStop) {
      return MapWidget.single(
        mapPlace: tripStops.first.toMapPlace(),
        onMarkerTap: (mapPlace) {
          context.read<DayTripCubit>().state.maybeMap(
                loaded: (state) {
                  final tripStop = mapPlace.maybeMap(
                    existing: (mapPlace) => tripStops.firstWhere(
                      (tripStop) => tripStop.id == mapPlace.tripStopId,
                      orElse: () => throw const UnexpectedStateException(),
                    ),
                    orElse: () => throw const UnexpectedStateException(),
                  );
                  context.router.push(
                    TripStopRoute(trip: state.trip, dayTrip: state.dayTrip, tripStop: tripStop),
                  );
                },
                orElse: () => throw const UnexpectedStateException(),
              );
        },
      );
    }

    final isTripStopsDirectionsToLoad =
        context.select((TripStopsMapCubit cubit) => cubit.state.isTripStopsDirectionsToLoad);

    if (isTripStopsDirectionsToLoad) {
      context.read<TripStopsMapCubit>().loadDirections(tripStops);
    }

    return MapWidget.multiple(
      mapPlaces: tripStops.map((tripStop) => tripStop.toMapPlace()).toList(),
      polylines: _getPolylines(context),
      onMarkerTap: (mapPlace) {
        context.read<DayTripCubit>().state.maybeMap(
              loaded: (state) {
                final tripStop = mapPlace.maybeMap(
                  existing: (mapPlace) => tripStops.firstWhere(
                    (tripStop) => tripStop.id == mapPlace.tripStopId,
                    orElse: () => throw const UnexpectedStateException(),
                  ),
                  orElse: () => throw const UnexpectedStateException(),
                );
                context.router.push(
                  TripStopRoute(trip: state.trip, dayTrip: state.dayTrip, tripStop: tripStop),
                );
              },
              orElse: () => throw const UnexpectedStateException(),
            );
      },
    );
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
