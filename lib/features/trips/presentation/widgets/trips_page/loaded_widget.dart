import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../ui/widgets/generics/grid_view_checker_mixin.dart';
import '../../../../settings/domain/entities/view_preferences.dart';
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
class _TripsWidget extends StatelessWidget with GridViewCheckerMixin {
  const _TripsWidget();

  @override
  Widget build(BuildContext context) {
    final viewMode = context.select<TripsCubit, ViewMode>((cubit) {
      return switch (cubit.state) {
        final TripsStateLoaded loaded => canShowGridView(context) ? loaded.viewMode : ViewMode.list,
        _ => ViewMode.list,
      };
    });

    return switch (viewMode) {
      ViewMode.list => const TripsListWidget(key: ValueKey('listViewWidget')),
      ViewMode.grid => const TripsGridViewWidget(key: ValueKey('gridViewWidget')),
    };
  }
}
