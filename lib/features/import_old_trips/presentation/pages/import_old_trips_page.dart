import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../tutorials/presentation/cubit/tutorial_cubit.dart';
import '../../../user_account/domain/entities/user.dart';
import '../../domain/entities/old_daily_trip.dart';
import '../../domain/entities/old_place.dart';
import '../../domain/entities/old_trip.dart';
import '../cubit/import_old_trips_cubit.dart';

part '../widgets/old_trips_widget.dart';
part '../widgets/error_widget.dart';
part '../widgets/import_button.dart';

@RoutePage()
class ImportOldTripsPage extends StatelessWidget {
  final User _user;
  const ImportOldTripsPage({super.key, required User user}) : _user = user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImportOldTripsCubit>(
      create: (context) => getIt(param1: _user)..reload(),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: _ImportOldTripsPageAppBar(),
        ),
        body: BlocBuilder<ImportOldTripsCubit, ImportOldTripsState>(
          buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
          builder: (context, state) {
            return SafeArea(
              minimum: defaultPagePadding,
              child: state.when(
                initial: () => const Center(child: CircularProgressIndicator.adaptive()),
                loaded: (trips, _) => _OldTripsWidget(trips: trips),
                error: (message) => _ErrorWidget(message: message),
                noTrips: () {
                  _navigateToTrips(context);
                  return const SizedBox.shrink();
                },
                importing: (trips, _) => const Center(child: CircularProgressIndicator.adaptive()),
                imported: () {
                  _navigateToTrips(context);
                  return const SizedBox.shrink();
                },
              ),
            );
          },
        ),
      ),
    );
  }

  _navigateToTrips(BuildContext context) {
    final showWelcome = context.read<TutorialCubit>().state.showWelcome;
    if (showWelcome) {
      context.replaceRoute(const TutorialRoute());
    } else {
      context.replaceRoute(const TripsRoute());
    }
  }
}

class _ImportOldTripsPageAppBar extends StatelessWidget {
  const _ImportOldTripsPageAppBar();

  @override
  Widget build(BuildContext context) {
    final title = context.select((ImportOldTripsCubit cubit) => cubit.state.mapOrNull(
          loaded: (state) => LocaleKeys.importOldTrips.tr(),
          error: (value) => LocaleKeys.error.tr(),
        ));

    return title != null ? AppBar(title: Text(title)) : const SizedBox.shrink();
  }
}
