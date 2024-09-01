import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../ui/widgets/ad/native_ad.dart';
import '../../../../../tutorials/presentation/cubit/tutorial_cubit.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';
import 'add_day_trip_stop_card.dart';
import 'day_trip_description.dart';
import 'delete_day_trip_button.dart';
import 'start_time_widget.dart';
import 'trip_stops_list.dart';

final _showCaseTutorial = GlobalKey();

class DayTripListViewWidget extends HookWidget {
  final Orientation orientation;
  const DayTripListViewWidget({super.key, required this.orientation});

  @override
  Widget build(BuildContext context) {
    final tutorialShowed = useRef(false);

    final tutorialCubit = context.read<TutorialCubit>();

    // Show the tutorial if the trip has at least one trip stop and the user has not seen the tutorial before
    final showTutorial = context.select((DayTripCubit cubit) => switch (cubit.state) {
          final DayTripStateLoaded state => state.tripStops.isNotEmpty &&
              (tutorialCubit.state.showTripStopSlide || tutorialCubit.state.showTripStopTravelPlaceholder),
          _ => false,
        });

    return ShowCaseWidget(
      builder: (context) {
        // Show the tutorial if it has not been shown before
        if ((showTutorial) && !tutorialShowed.value) {
          tutorialShowed.value = true;
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await Future.delayed(const Duration(milliseconds: 700));
            if (context.mounted) {
              ShowCaseWidget.of(context).startShowCase([_showCaseTutorial]);
            }
          });
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
          child: CustomScrollView(
            slivers: [
              const SliverPadding(
                padding: EdgeInsets.only(top: pageVerticalPadding),
                sliver: SliverToBoxAdapter(child: StartTimeWidget()),
              ),
              const SliverToBoxAdapter(child: DayTripDescription()),
              SliverToBoxAdapter(child: NativeAd.dayTrip(padding: const EdgeInsets.only(top: verticalSpaceS))),
              TripStopsList(showCaseTutorial: _showCaseTutorial),
              const SliverToBoxAdapter(child: SizedBox(height: verticalSpaceS)),
              const SliverToBoxAdapter(child: AddDayTripStopCard()),
              const SliverToBoxAdapter(child: SizedBox(height: verticalSpaceL)),
              const SliverPadding(
                padding: EdgeInsets.only(bottom: pageVerticalPadding),
                sliver: SliverToBoxAdapter(child: SafeArea(child: DeleteDayTripButton())),
              ),
            ],
          ),
        );
      },
      onFinish: () {
        tutorialCubit.onShowTripStopSlideAndPlaceholder();
      },
    );
  }
}
