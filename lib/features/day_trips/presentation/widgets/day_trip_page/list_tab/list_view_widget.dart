import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../tutorials/presentation/cubit/tutorial_cubit.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';
import 'add_day_trip_stop_card.dart';
import 'day_trip_description.dart';
import 'delete_day_trip_button.dart';
import 'start_time_widget.dart';
import 'trip_stops_list.dart';

final _showCaseKeyOne = GlobalKey();

class ListViewWidget extends StatelessWidget {
  final Orientation orientation;
  const ListViewWidget({super.key, required this.orientation});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = (ResponsiveBreakpoints.of(context).largerThan(MOBILE) &&
              orientation == Orientation.portrait)
          ? constraints.maxWidth * 0.8
          : constraints.maxWidth;

      final additionalHorizontalPadding = (constraints.maxWidth - maxWidth) / 2;

      return _Body(additionalHorizontalPadding: additionalHorizontalPadding);
    });
  }
}

class _Body extends HookWidget {
  final double additionalHorizontalPadding;

  const _Body({required this.additionalHorizontalPadding});

  @override
  Widget build(BuildContext context) {
    final tutorialShowed = useRef(false);

    final tutorialCubit = context.read<TutorialCubit>();

    final showTutorial = context.select((DayTripCubit cubit) => switch (cubit.state) {
          final DayTripStateLoaded state => state.tripStops.isNotEmpty &&
              (tutorialCubit.state.showTripStopSlide ||
                  tutorialCubit.state.showTripStopTravelPlaceholder),
          _ => false,
        });

    return ShowCaseWidget(
      builder: (context) {
        if (showTutorial && !tutorialShowed.value) {
          tutorialShowed.value = true;
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await Future.delayed(const Duration(milliseconds: 700));
            if (context.mounted) {
              ShowCaseWidget.of(context).startShowCase([_showCaseKeyOne]);
            }
          });
        }

        return ListView(
          padding: EdgeInsets.symmetric(
            horizontal: pageHorizontalPadding + additionalHorizontalPadding,
            vertical: pageVerticalPadding,
          ),
          children: [
            const StartTimeWidget(),
            const SizedBox(height: verticalSpaceS),
            const DayTripDescription(),
            const SizedBox(height: verticalSpaceXs),
            Showcase(
              key: _showCaseKeyOne,
              title: LocaleKeys.tripStopSlideShowCaseTitle.tr(),
              description: LocaleKeys.tripStopSlideShowCaseBody.tr(),
              child: const TripStopsList(),
            ),
            const AddDayTripStopCard(),
            const SizedBox(height: verticalSpaceL),
            const SafeArea(child: DeleteDayTripButton()),
          ],
        );
      },
      onFinish: () {
        tutorialCubit.onShowTripStopSlideAndPlaceholder();
      },
    );
  }
}
