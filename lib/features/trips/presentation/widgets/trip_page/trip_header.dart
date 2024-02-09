import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/trip/generic_trip_header.dart';
import '../../cubit/trip/trip_cubit.dart';

final class TripHeader extends StatelessWidget {
  const TripHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final tripDescription = context.select((TripCubit cubit) => cubit.state.trip.description);

    return GenericTripDescription(description: tripDescription);
  }
}
