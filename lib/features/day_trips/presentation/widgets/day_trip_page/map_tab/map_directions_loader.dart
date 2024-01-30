import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/trip_stops_map/trip_stops_map_cubit.dart';

class MapDirectionsLoader extends StatelessWidget {
  const MapDirectionsLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((TripStopsMapCubit cubit) => cubit.state.isLoading);
    if (isLoading) {
      return const LinearProgressIndicator();
    }
    return const SizedBox.shrink();
  }
}
