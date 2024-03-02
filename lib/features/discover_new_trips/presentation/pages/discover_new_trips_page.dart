import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/l10n/languages.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../gen/assets.gen.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../../ui/presentation/widgets/background/background_widget_container.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../ui/presentation/widgets/generics/generic_error_widget.dart';
import '../../../ui/presentation/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../cubit/trips/discover_new_trips_cubit.dart';

part '../widgets/trips/discover_new_trips_body.dart';
part '../widgets/trips/discover_new_trips_error_widget.dart';
part '../widgets/trips/discover_new_trips_list.dart';
part '../widgets/trips/discover_new_trips_loaded.dart';
part '../widgets/trips/no_trips_widget.dart';
part '../widgets/trips/search_bar/discover_new_trips_search_bar.dart';
part '../widgets/trips/search_bar/more_section/description_search.dart';
part '../widgets/trips/search_bar/more_section/languages_filter.dart';
part '../widgets/trips/search_bar/more_section/more_bar.dart';
part '../widgets/trips/search_bar/more_section/more_section.dart';
part '../widgets/trips/search_bar/search_field.dart';
part '../widgets/trips/trip_card.dart';

@RoutePage()
class DiscoverNewTripsPage extends StatelessWidget {
  const DiscoverNewTripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DiscoverNewTripsCubit>(
      create: (context) => getIt<DiscoverNewTripsCubit>(
          param1: context.read<UserCubit>().state.maybeMap(
                loggedIn: (state) => state.user.id,
                orElse: () => throw const UnexpectedStateException(),
              ))
        ..fetchTrips(),
      child: ScaffoldTransparent(
        appBar: AppBar(
          backgroundColor: context.appBarColor,
          title: Text(LocaleKeys.discoverNewTrips.tr()),
        ),
        body: const _DiscoverNewTripBody(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
