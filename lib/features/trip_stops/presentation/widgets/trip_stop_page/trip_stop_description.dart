import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/widgets/trip/generic_trip_header.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

final class TripStopDescription extends StatelessWidget {
  const TripStopDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final description = context.select((TripStopCubit cubit) => cubit.state.tripStop.description);

    if (description?.isEmpty ?? true) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: verticalSpace),
      child: GenericTripDescription(headerText: description),
    );
  }
}
