import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/utilities/extensions.dart';
import '../../../../map/domain/entities/map_place.dart';
import '../../../../map/presentation/widgets/map_widget.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

class TripStopMapWidget extends HookWidget  {
  const TripStopMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return BlocBuilder<TripStopCubit, TripStopState>(
      buildWhen: (previous, current) => previous.tripStop.location != current.tripStop.location,
      builder: (context, state) {
        return Container(
          color: context.hasBackgroundImage ? Theme.of(context).colorScheme.surface : null,
          child: MapWidget.single(
            mapPlace: context.read<TripStopCubit>().state.tripStop.toMapPlace(),
            showInfoWindow: false,
            useDifferentColorsForDone: false,
            isInsideScrollView: true,
          ),
        );
      },
    );
  }
}
