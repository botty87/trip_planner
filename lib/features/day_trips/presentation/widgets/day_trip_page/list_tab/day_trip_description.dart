import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../ui/widgets/trip/generic_trip_description.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';

final class DayTripDescription extends StatelessWidget {
  const DayTripDescription({super.key, this.padding});

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final description = context.select((DayTripCubit cubit) => cubit.state.dayTrip.description);

    return Padding(
      padding: (description?.isNotEmpty ?? false) ? padding ?? EdgeInsets.zero : EdgeInsets.zero,
      child: GenericTripDescription(description: description),
    );
  }
}
