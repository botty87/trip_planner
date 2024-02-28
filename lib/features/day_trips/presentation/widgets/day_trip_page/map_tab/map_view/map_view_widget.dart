import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../ui/presentation/widgets/generics/snackbars.dart';
import '../../../../cubit/day_trip/day_trip_cubit.dart';
import '../../../../cubit/trip_stops_map/trip_stops_map_cubit.dart';
import 'multiple_trip_stops_map_widget.dart';
import 'no_trip_stops_map_widget.dart';
import 'single_trip_stops_map_widget.dart';

class MapViewWidget extends HookWidget {
  const MapViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return BlocListener<TripStopsMapCubit, TripStopsMapState>(
      listener: (context, state) {
        if (state.hasTripStopsDirectionsErrors) {
          ScaffoldMessenger.of(context).showSnackBar(
            Snackbars.error(
              LocaleKeys.tripStopsDirectionsError.tr(),
              duration: const Duration(seconds: 6),
              showCloseButton: true,
            ),
          );
        }
        context.read<TripStopsMapCubit>().clearTripStopsDirectionsErrors();
      },
      listenWhen: (previous, current) {
        return current.hasTripStopsDirectionsErrors;
      },
      child: const _MapView(),
    );
  }
}

class _MapView extends HookWidget {
  const _MapView();

  TripStopsNumState _getTripStopsNumState(
      BuildContext context, ObjectRef<TripStopsNumState?> previousTripStopsNumState) {
    TripStopsNumState getStateFromInt(int? length) {
      if (length == null) {
        return previousTripStopsNumState.value ?? TripStopsNumState.zero;
      }

      final tripStopsNumState = length == 0
          ? TripStopsNumState.zero
          : length == 1
              ? TripStopsNumState.one
              : TripStopsNumState.moreThanOne;

      previousTripStopsNumState.value = tripStopsNumState;

      return tripStopsNumState;
    }

    return context.select((DayTripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => getStateFromInt(state.tripStops.length),
          editing: (state) => getStateFromInt(state.tripStops.length),
          deleting: (value) => getStateFromInt(value.tripStops.length),
          orElse: () => getStateFromInt(null),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final previousTripStopsNumState = useRef<TripStopsNumState?>(null);

    final tripStopsNumState = _getTripStopsNumState(context, previousTripStopsNumState);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: _getMapWidget(tripStopsNumState),
    );
  }

  _getMapWidget(TripStopsNumState tripStopsNumState) {
    switch (tripStopsNumState) {
      case TripStopsNumState.zero:
        return LayoutBuilder(builder: (context, constraints) {
          return NoTripStopsMapWidget(imageHeight: constraints.maxHeight * 0.5);
        });
      case TripStopsNumState.one:
        return const SingleTripStopsMapWidget();
      case TripStopsNumState.moreThanOne:
        return const MultipleTripStopsMapWidget();
    }
  }
}

enum TripStopsNumState { zero, one, moreThanOne }
