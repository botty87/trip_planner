import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../ui/presentation/widgets/background/background_image_wrapper.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../ui/presentation/widgets/generics/trip_pages_animated_switcher.dart';
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
    final userId = switch (context.read<UserCubit>().state) {
      final UserStateLoggedIn loggedInState => loggedInState.user.id,
      _ => null,
    };

    //It can happens during transation between pages, after user logout
    if (userId == null) {
      return const SizedBox.shrink();
    }

    return BlocProvider<TripsCubit>(
      create: (context) => getIt(param1: userId)..startListenTrips(),
      child: ScaffoldTransparent(
        appBar: AppBar(
          scrolledUnderElevation: hasBackgroundImage ? 0 : null,
          backgroundColor: context.isDarkMode ? appBarDarkColor : appBarLightColor,
          title: Text(LocaleKeys.tripsPageTitle.tr()),
        ),
        body: BlocBuilder<TripsCubit, TripsState>(
          buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
          builder: (context, state) => TripPagesAnimatedSwitcher(
            child: state.map(
              initial: (_) => const TripsPageInitialWidget(key: ValueKey('initial')),
              loaded: (_) => const Center(key: ValueKey('loaded'), child: LoadedWidget()),
              error: (state) => Center(
                  key: const ValueKey('error'), child: TripsErrorWidget(message: state.message)),
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
}
