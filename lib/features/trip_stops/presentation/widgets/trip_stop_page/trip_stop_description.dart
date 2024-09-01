import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../ui/widgets/trip/generic_trip_description.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

final class TripStopDescription extends StatelessWidget {
  const TripStopDescription({super.key, this.padding, this.expand = false});

  final EdgeInsets? padding;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final description = context.select((TripStopCubit cubit) => cubit.state.tripStop.description);

    if (description?.isEmpty ?? true) {
      return const SizedBox.shrink();
    }

    return expand
        ? Expanded(child: _Body(padding: padding, description: description))
        : _Body(padding: padding, description: description);
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.padding, required this.description});

  final EdgeInsets? padding;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (description?.isNotEmpty ?? false) ? padding ?? EdgeInsets.zero : EdgeInsets.zero,
      child: GenericTripDescription(description: description, isScrollable: true),
    );
  }
}
