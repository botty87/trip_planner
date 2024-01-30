import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../cubit/day_trip/day_trip_cubit.dart';
import 'list_tab/list_view_widget/list_view_widget.dart';
import 'map_tab/map_view/map_view_widget.dart';

class DayTripPageLoaded extends HookWidget {
  const DayTripPageLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    final absorbed = context.select((DayTripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.explictitStartTimeSave,
          deleting: (_) => true,
          orElse: () => false,
        ));

    return AbsorbPointer(
      absorbing: absorbed,
      child: Column(
        children: [
          absorbed ? const LinearProgressIndicator() : const SizedBox.shrink(),
          const Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListViewWidget(),
                MapViewWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
