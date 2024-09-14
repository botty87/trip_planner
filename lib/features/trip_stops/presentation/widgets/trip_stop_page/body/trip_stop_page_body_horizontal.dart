import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../../../ads/presentation/widgets/native_ad.dart';
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
          return ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: maxRowWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                    child: SafeArea(
                      minimum: const EdgeInsets.only(bottom: pageVerticalPadding),
                      child: Column(
                        children: [
                          NativeAd.tripStop(padding: const EdgeInsets.only(bottom: verticalSpace)),
                          const Expanded(child: TripStopMapWidget()),
                          if (!kIsWeb) ...[
                            const SizedBox(height: verticalSpaceXL),
                            const TripStopNavigateToButton(),
                          ],
                          const SizedBox(height: verticalSpaceL),
                          const DeleteTripStopButton(),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: horizontalSpaceL),
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: maxListViewWidth),
                    child: const SafeArea(
                      minimum: EdgeInsets.symmetric(vertical: pageVerticalPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TripStopDescription(
                            padding: EdgeInsets.only(bottom: verticalSpace),
                            expand: true,
                          ),
                          TripStopDoneDurationContainer(),
                          SizedBox(height: verticalSpace),
                          Expanded(child: Center(child: TripStopNoteWidget())),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
