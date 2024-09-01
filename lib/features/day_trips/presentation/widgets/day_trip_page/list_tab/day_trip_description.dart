import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../ui/widgets/trip/generic_trip_description.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

final class DayTripDescription extends StatelessWidget {
  const DayTripDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final description = context.select((DayTripCubit cubit) => cubit.state.dayTrip.description);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (description?.isNotEmpty ?? false) const SizedBox(height: verticalSpaceS),
        GenericTripDescription(description: description),
        if (description?.isNotEmpty ?? false) const SizedBox(height: verticalSpace),
      ],
    );
  }
}
