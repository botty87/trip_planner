import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../ui/widgets/generics/items_render_mode.dart';
import '../../cubit/trips/trips_cubit.dart';

class TripsViewModeButton extends StatelessWidget {
  const TripsViewModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final viewMode = context.select((TripsCubit cubit) {
      return switch (cubit.state) {
        final TripsStateLoaded state => state.viewMode,
        _ => null,
      };
    });

    if (viewMode == null) return const SizedBox.shrink();

    return IconButton(
      icon: Icon(viewMode == ViewMode.list ? Icons.grid_view : Icons.list),
      onPressed: () => context.read<TripsCubit>().changeViewMode(),
    );
  }
}
