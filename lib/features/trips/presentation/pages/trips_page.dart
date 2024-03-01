import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../ui/presentation/widgets/background/background_image_wrapper.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../ui/presentation/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../settings/presentation/cubit/settings_cubit.dart';
import '../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../cubit/trips/trips_cubit.dart';
import '../widgets/trips_page/drawer.dart';
import '../widgets/trips_page/loaded_widget.dart';
import '../widgets/trips_page/trips_error_widget.dart';
import '../widgets/trips_page/trips_page_initial_widget.dart';

@RoutePage()
class TripsPage extends StatelessWidget with BackgroundImageMixin {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final hasBackgroundImage = this.hasBackgroundImage(context);
    final userId = context.read<UserCubit>().state.maybeMap(
          loggedIn: (state) => state.user.id,
          orElse: () => false,
        );

    return BlocProvider<TripsCubit>(
      create: (context) => getIt(param1: userId)..startListenTrip(),
      child: ScaffoldTransparent(
        appBar: AppBar(
          scrolledUnderElevation: hasBackgroundImage ? 0 : null,
          backgroundColor: context.isDarkMode ? appBarDarkColor : appBarLightColor,
          title: Text(LocaleKeys.tripsPageTitle.tr()),
        ),
        body: BlocBuilder<TripsCubit, TripsState>(
          buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
          builder: (context, state) => TripPagesAnimatedSwitcher(
            child: state.when(
              initial: () => const TripsPageInitialWidget(key: ValueKey('initial')),
              loaded: (_) {
                Future.delayed(
                    const Duration(seconds: 2), () => checkIfShowNewBackgroundsDialog(context));
                return const Center(key: ValueKey('loaded'), child: LoadedWidget());
              },
              error: (message) =>
                  Center(key: const ValueKey('error'), child: TripsErrorWidget(message: message)),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushRoute(NewTripRoute());
          },
          child: const Icon(Icons.add),
        ),
        drawer: const TripsPageDrawer(),
      ),
    );
  }

  checkIfShowNewBackgroundsDialog(BuildContext context) {
    final settingsCubit = context.read<SettingsCubit>();
    final settings = settingsCubit.state.settings;

    if (settings.showBackgroundsDialog) {
      settingsCubit.disableDisplayBackgroundsDialog();
      settingsCubit.updateSettings();

      showOkAlertDialog(
        context: context,
        title: LocaleKeys.newBackgrounds.tr(),
        message: LocaleKeys.newBackgroundsMessage.tr(),
        okLabel: LocaleKeys.close.tr(),
      );
    }
  }
}
