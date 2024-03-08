import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../ui/presentation/widgets/trip/generic_trip_description.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

final class DayTripDescription extends StatelessWidget {
  const DayTripDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final description = context.select((DayTripCubit cubit) => cubit.state.dayTrip.description);

    return GenericTripDescription(description: description);
  }
}
