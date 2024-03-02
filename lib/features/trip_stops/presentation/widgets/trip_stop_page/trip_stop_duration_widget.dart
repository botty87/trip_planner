import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui/presentation/widgets/trip/generic_duration_widget.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

class TripStopDurationWidget extends StatelessWidget {
  const TripStopDurationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final durationInMinutes =
        context.select((TripStopCubit cubit) => cubit.state.tripStop.duration);

    return GenericDurationWidget(durationInMinutes: durationInMinutes);
  }
}
