import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui/presentation/widgets/trip/generic_trip_description.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

final class TripStopDescription extends StatelessWidget {
  const TripStopDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final description = context.select((TripStopCubit cubit) => cubit.state.tripStop.description);

    return GenericTripDescription(description: description);
  }
}
