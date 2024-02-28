import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui/presentation/widgets/generics/generic_error_widget.dart';
import '../../cubit/day_trip/day_trip_cubit.dart';

class DayTripErrorWidget extends StatelessWidget {
  final String message;
  const DayTripErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return GenericErrorWidget(
      message: message,
      onRetry: () => context.read<DayTripCubit>()
        ..startListenTripStops()
        ..startListenDayTrip(),
    );
  }
}
