import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui/presentation/widgets/generics/generic_error_widget.dart';
import '../../cubit/trips/trips_cubit.dart';

class TripsErrorWidget extends StatelessWidget {
  final String message;
  const TripsErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return GenericErrorWidget(
        message: message, onRetry: () => context.read<TripsCubit>().startListenTrips());
  }
}
