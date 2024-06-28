import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../ui/presentation/widgets/background/background_widget_container.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../ui/presentation/widgets/trip/generic_trip_card.dart';
import '../../../ui/presentation/widgets/trip/generic_trip_description.dart';
import '../../../ui/presentation/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../../tutorials/presentation/cubit/tutorial_cubit.dart';
import '../cubit/daily_trips/discover_new_daily_trips_cubit.dart';

part '../widgets/daily_trips/daily_trips_header.dart';
part '../widgets/daily_trips/day_trip_card.dart';
part '../widgets/daily_trips/discover_new_daily_trips_body.dart';
part '../widgets/daily_trips/discover_new_daily_trips_error_widget.dart';
part '../widgets/daily_trips/discover_new_daily_trips_list.dart';
part '../widgets/daily_trips/loaded_widget.dart';

final _showCaseKeyOne = GlobalKey();

@RoutePage()
class DiscoverNewDailyTripsPage extends HookWidget {
  final Trip _trip;
  const DiscoverNewDailyTripsPage({
    super.key,
    required Trip trip,
  }) : _trip = trip;

  @override
  Widget build(BuildContext context) {
    final tutorialShowed = useRef(false);

    return BlocProvider<DiscoverNewDailyTripsCubit>(
      create: (context) => getIt<DiscoverNewDailyTripsCubit>(param1: _trip.id)..fetchDayTrips(),
      child: Builder(builder: (context) {
        return ShowCaseWidget(
          builder: (context) {
            final showTutorial = context.read<TutorialCubit>().state.showCreateFromPublicTrip;

            if (showTutorial && !tutorialShowed.value) {
              tutorialShowed.value = true;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ShowCaseWidget.of(context).startShowCase([_showCaseKeyOne]);
              });
            }

            return ScaffoldTransparent(
              appBar: AppBar(
                backgroundColor: context.appBarColor,
                title: Text(_trip.name),
              ),
              body: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  if (notification.direction == ScrollDirection.reverse) {
                    context.read<DiscoverNewDailyTripsCubit>().hideFab();
                  } else if (notification.direction == ScrollDirection.forward) {
                    context.read<DiscoverNewDailyTripsCubit>().showFab();
                  }
                  return true;
                },
                child: _DiscoverNewDailyTripsBody(trip: _trip),
              ),
              floatingActionButton: _Fab(trip: _trip),
            );
          },
          onFinish: () => context.read<TutorialCubit>().onCreateFromPublicTripDone(),
        );
      }),
    );
  }
}

class _Fab extends StatelessWidget {
  final Trip _trip;

  const _Fab({required Trip trip}) : _trip = trip;

  @override
  Widget build(BuildContext context) {
    final showFab = context.select((DiscoverNewDailyTripsCubit cubit) {
      return cubit.state.maybeMap(
        loaded: (state) => state.isFabVisible,
        orElse: () => false,
      );
    });

    //This is a workaround to avoid the showcase to be hidden by the FAB due to a library bug
    final EdgeInsets showCasePadding;
    if (Platform.isAndroid) {
      showCasePadding = const EdgeInsets.only(top: 24, left: 16);
    } else if (Platform.isIOS) {
      showCasePadding = const EdgeInsets.only(bottom: 24, right: 16);
    } else {
      showCasePadding = EdgeInsets.zero;
    }

    return Showcase(
      key: _showCaseKeyOne,
      title: LocaleKeys.addPublicTripFabShowCaseTitle.tr(),
      description: LocaleKeys.addPublicTripFabShowCaseBody.tr(),
      targetPadding: showCasePadding,
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 300),
        offset: showFab ? Offset.zero : const Offset(0, 2),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: showFab ? 1 : 0,
          child: FloatingActionButton(
            child: Icon(MdiIcons.earthPlus),
            onPressed: () => context.router.push(NewTripRoute(existingTrip: _trip)),
          ),
        ),
      ),
    );
  }
}
