import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../../core/ads/ad_entity.dart';
import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../ui/widgets/background/scaffold_transparent.dart';
import '../../../../ui/widgets/banner_ad_widget.dart';
import '../../../../ui/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../cubit/trips/trips_cubit.dart';
import '../widgets/trips_page/drawer.dart';
import '../widgets/trips_page/loaded_widget.dart';
import '../widgets/trips_page/trips_error_widget.dart';
import '../widgets/trips_page/trips_page_initial_widget.dart';

@RoutePage()
class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = switch (context.read<UserCubit>().state) {
      final UserStateLoggedIn loggedInState => loggedInState.user.id,
      _ => null,
    };

    //It can happens during transation between pages, after user logout
    if (userId == null) {
      return const SizedBox.shrink();
    }

    return BlocProvider<TripsCubit>(
      create: (context) => getIt(param1: userId),
      child: ScaffoldTransparent(
        hasBackgroundImage: context.hasBackgroundImage,
        appBar: AppBar(
          scrolledUnderElevation: context.hasBackgroundImage ? 0 : null,
          backgroundColor: context.isDarkMode ? appBarDarkColor : appBarLightColor,
          title: Text(LocaleKeys.tripsPageTitle.tr()),
        ),
        body: const _Body(),
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

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    loadAd() async {
      final AnchoredAdaptiveBannerAdSize? size =
          await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(MediaQuery.of(context).size.width.truncate());

      if (size != null && mounted) {
        context.read<TripsCubit>().loadAd(size);
      }
    }

    loadAd();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocSelector<TripsCubit, TripsState, BannerAdEntity?>(
          selector: (state) => state.ad,
          builder: (context, bannerAd) {
            return AnimatedSize(
                duration: const Duration(milliseconds: 300),
                child: bannerAd != null ? BannerAdWidget(bannerAd: bannerAd) : const SizedBox.shrink());
          },
        ),
        Expanded(
          child: BlocBuilder<TripsCubit, TripsState>(
            buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
            builder: (context, state) => TripPagesAnimatedSwitcher(
              child: state.map(
                initial: (_) => const TripsPageInitialWidget(key: ValueKey('initial')),
                loaded: (_) => const Center(key: ValueKey('loaded'), child: LoadedWidget()),
                error: (state) => Center(key: const ValueKey('error'), child: TripsErrorWidget(message: state.message)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
