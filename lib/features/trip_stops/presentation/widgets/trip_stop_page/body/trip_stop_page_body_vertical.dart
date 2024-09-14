import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import '../../../../../ads/presentation/widgets/native_ad.dart';
import '../delete_trip_stop_button.dart';
import '../trip_stop_description.dart';
import '../trip_stop_done_duration_container.dart';
import '../trip_stop_map_widget.dart';
import '../trip_stop_navigate_to_button.dart';
import '../trip_stop_note_widget.dart';

class TripStopPageBodyVertical extends StatelessWidget {
  const TripStopPageBodyVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: maxListViewWidth),
      child: ListView(
        padding: defaultPagePadding,
        children: [
          NativeAd.tripStop(
            key: const Key('tripStopAd'),
            padding: const EdgeInsets.only(bottom: verticalSpaceL),
          ),
          const TripStopDescription(padding: EdgeInsets.only(bottom: verticalSpaceL)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: const TripStopMapWidget(),
          ),
          const SizedBox(height: verticalSpace),
          const TripStopDoneDurationContainer(),
          if (!kIsWeb) ...[
            const SizedBox(height: verticalSpace),
            const TripStopNavigateToButton(),
          ],
          const SizedBox(height: verticalSpaceL),
          const TripStopNoteWidget(),
          const SizedBox(height: verticalSpaceL),
          const SafeArea(child: DeleteTripStopButton()),
        ],
      ),
    );
  }
}
