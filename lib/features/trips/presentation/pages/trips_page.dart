import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../core/widgets/theme/background_image_wrapper.dart';
import '../../../../core/widgets/theme/scaffold_transparent.dart';
import '../../../../core/widgets/trip_pages_animated_switcher.dart';
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

    return BlocProvider<TripsCubit>(
      create: (context) => getIt()..startListenTrip(),
      child: BackgroundImageWrapper(
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
                loaded: (_) => const Center(key: ValueKey('loaded'), child: LoadedWidget()),
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
      ),
    );
  }
}
