import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../cubit/trip_stop/trip_stop_cubit.dart';
import '../delete_trip_stop_button.dart';
import '../trip_stop_description.dart';
import '../trip_stop_done_duration_container.dart';
import '../trip_stop_map_widget.dart';
import '../trip_stop_navigate_to_button.dart';
import '../trip_stop_note_widget.dart';

class TripStopPageBodyHorizontal extends StatelessWidget {
  const TripStopPageBodyHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: BlocSelector<TripStopCubit, TripStopState, String?>(
        selector: (state) => state.tripStop.description,
        builder: (context, description) {
          return const Row(
            children: [
              Expanded(
                child: SafeArea(
                  minimum: EdgeInsets.only(bottom: pageVerticalPadding),
                  child: Column(
                    children: [
                      Expanded(child: TripStopMapWidget()),
                      if (!kIsWeb) ...[
                        SizedBox(height: verticalSpaceXL),
                        TripStopNavigateToButton(),
                      ],
                      SizedBox(height: verticalSpaceL),
                      DeleteTripStopButton(),
                    ],
                  ),
                ),
              ),
              SizedBox(width: horizontalSpaceL),
              Expanded(
                child: SafeArea(
                  minimum: EdgeInsets.only(bottom: pageVerticalPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(child: SingleChildScrollView(child: TripStopDescription())),
                      TripStopNoteWidget(),
                      SizedBox(height: verticalSpaceL),
                      TripStopDoneDurationContainer(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
