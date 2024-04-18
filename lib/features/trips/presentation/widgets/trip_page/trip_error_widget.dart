import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui/presentation/widgets/generics/generic_error_widget.dart';
import '../../cubit/trip/trip_cubit.dart';

class TripErrorWidget extends StatelessWidget {
  final String message;
  const TripErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return GenericErrorWidget(
        message: message,
        onRetry: () => context.read<TripCubit>()
          ..startListenDayTrips()
          ..startListenTrip());
  }
}
