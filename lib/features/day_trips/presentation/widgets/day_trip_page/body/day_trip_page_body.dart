import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../cubit/day_trip/day_trip_cubit.dart';
import 'day_trip_page_horizontal.dart';
import 'day_trip_page_vertical.dart';

class DayTripPageBody extends HookWidget {
  const DayTripPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    //Instantiate the tab controller and add the listener to it
    final tabController = useTabController(initialLength: 2, initialIndex: 0);
    useEffect(() {
      tabController.addListener(() {
        final index = tabController.index;
        context.read<DayTripCubit>().setCurrentSelectedTab(index);
      });
      return null;
    }, [tabController]);

    final isModalBottomEditing = useRef<bool>(false);

    final isSaving = useStreamController<bool>();
    final errorMessageStream = useStreamController<String?>();

    return PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          if (didPop) {
            return;
          }

          final success = await _onWillPop(context);

          if (success && context.mounted) {
            Navigator.of(context).pop();
          }
        },
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return DayTripPageVerticalLayout(
              isSaving: isSaving,
              isModalBottomEditing: isModalBottomEditing,
              errorMessageStream: errorMessageStream,
              tabController: tabController,
            );
          } else {
            return DayTripPageHorizontalLayout(
              isSaving: isSaving,
              isModalBottomEditing: isModalBottomEditing,
              errorMessageStream: errorMessageStream,
            );
          }
        }));
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return context.read<DayTripCubit>().saveDayTripStopStartTime(forced: true);
  }
}
