import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../settings/domain/entities/view_preferences.dart';
import '../../../cubit/trip/trip_cubit.dart';
import 'trip_page_loaded_grid_layout.dart';
import 'trip_page_loaded_horizontal_list_layout.dart';
import 'trip_page_loaded_vertical_list_layout.dart';

class TripPageLoadedWidget extends StatelessWidget {
  //Used for testing to avoid ResponsiveBreakpoints.of(context) trouble
  final bool isTest;
  const TripPageLoadedWidget({super.key, this.isTest = false});

  @override
  Widget build(BuildContext context) {
    final absorbed = context.select((TripCubit cubit) => cubit.state.maybeMap(
          deleting: (_) => true,
          orElse: () => false,
        ));

    return AbsorbPointer(
      absorbing: absorbed,
      child: Column(
        children: [
          absorbed ? const LinearProgressIndicator() : const SizedBox.shrink(),
          Expanded(
            child: BlocSelector<TripCubit, TripState, ViewMode>( 
              selector: (state) => state.viewMode,
              builder: (context, viewMode) {
                return switch(viewMode) {
                  ViewMode.list => const _ListLayouts(),
                  ViewMode.grid => const TripPageLoadedGridLayout(),
                };
                
              },
            ),
          )
        ],
      ),
    );
  }
}

class _ListLayouts extends StatelessWidget {
  const _ListLayouts();

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const TripPageLoadedVerticalListLayout();
        } else {
          return const TripPageLoadedHorizontalListLayout();
        }
      },
    );
  }
}
