import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants.dart';
import '../../../../../ui/widgets/generics/items_render_mode.dart';
import '../../cubit/trips/trips_cubit.dart';
import 'no_trips_widget.dart';
import 'trips_grid_view_widget.dart';
import 'trips_list_widget.dart';

class LoadedWidget extends HookWidget {
  const LoadedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //Use this for the animation
    final previousHasTrips = usePrevious(context.select<TripsCubit, bool?>((cubit) {
      return switch (cubit.state) {
        final TripsStateLoaded loaded => loaded.userTrips.isNotEmpty || loaded.sharedTrips.isNotEmpty,
        _ => null
      };
    }));

    final hasTrips = context.select<TripsCubit, bool>((cubit) {
      return switch (cubit.state) {
        final TripsStateLoaded loaded => loaded.userTrips.isNotEmpty || loaded.sharedTrips.isNotEmpty,
        _ => previousHasTrips ?? false
      };
    });

    return hasTrips ? const _TripsWidget() : const NoTripsWidget();
  }
}

/// This widget is used to show the trips in the list or grid view
class _TripsWidget extends StatelessWidget {
  const _TripsWidget();

  @override
  Widget build(BuildContext context) {
    final itemsRenderMode = context.select<TripsCubit, ItemsRenderMode>((cubit) {
      return switch (cubit.state) {
        final TripsStateLoaded loaded =>
          MediaQuery.of(context).size.width < minGridViewWidth ? ItemsRenderMode.list : loaded.itemsRenderMode,
        _ => ItemsRenderMode.list,
      };
    });

    return switch (itemsRenderMode) {
      ItemsRenderMode.list => const TripsListWidget(key: ValueKey('listViewWidget')),
      ItemsRenderMode.grid => const TripsGridViewWidget(key: ValueKey('gridViewWidget')),
    };
  }
}
