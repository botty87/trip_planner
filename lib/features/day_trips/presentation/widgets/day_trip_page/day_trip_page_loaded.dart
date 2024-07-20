import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants.dart';
import '../../cubit/day_trip/day_trip_cubit.dart';
import 'list_tab/list_view_widget.dart';
import 'map_tab/map_view/map_view_widget.dart';

class DayTripPageLoaded extends HookWidget {
  final Orientation orientation;
  const DayTripPageLoaded({super.key, required this.orientation});

  @override
  Widget build(BuildContext context) {
    final absorbed = context.select((DayTripCubit cubit) => cubit.state.maybeMap(
          loaded: (state) => state.explictitStartTimeSave,
          deleting: (_) => true,
          orElse: () => false,
        ));

    return AbsorbPointer(
      key: const Key('dayTripPageLoadedAbsorbPointer'),
      absorbing: absorbed,
      child: Column(
        key: const Key('dayTripPageLoadedColumn'),
        children: [
          absorbed ? const LinearProgressIndicator() : const SizedBox.shrink(),
          Expanded(
            child: orientation == Orientation.portrait
                ? ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                    child: const TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListViewWidget(orientation: Orientation.portrait),
                        MapViewWidget(),
                      ],
                    ),
                  )
                : ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: maxRowWidth),
                    child: Row(
                      key: const Key('dayTripPageLoadedRow'),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                              child: const ListViewWidget(orientation: Orientation.landscape)),
                        ),
                        const SizedBox(width: horizontalSpaceL),
                        Flexible(
                            child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                          child: const Padding(
                            padding: EdgeInsets.only(right: pageHorizontalPadding, bottom: verticalSpace),
                            child: MapViewWidget(),
                          ),
                        )),
                      ],
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
