import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/di/di.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/extensions.dart';
import '../../../../../ui/widgets/generics/grid_view_checker_mixin.dart';
import '../../../../../ui/widgets/view_mode/view_mode_action_button.dart';
import '../../../../settings/domain/entities/view_preferences.dart';
import '../../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../../cubit/share/share_cubit.dart';
import '../../cubit/trip/trip_cubit.dart';
import '../sharing_section/sharing_trip_section.dart';

part 'sharing_modal_bottom.dart';

class TripPageAppBar extends StatelessWidget with GridViewCheckerMixin {
  final bool showShareButton;
  final GlobalKey showCaseKeyOne;

  const TripPageAppBar({super.key, required this.showShareButton, required this.showCaseKeyOne});

  @override
  Widget build(BuildContext context) {
    final tripName = context.select<TripCubit, String>((cubit) => cubit.state.trip.name);

    return AppBar(
      title: Text(tripName),
      backgroundColor: context.isDarkMode ? appBarDarkColor : appBarLightColor,
      scrolledUnderElevation: context.hasBackgroundImage ? 0 : null,
      actions: [
        if (showShareButton)
          Showcase(
            key: showCaseKeyOne,
            title: LocaleKeys.shareYourTripTitle.tr(),
            description: LocaleKeys.shareYourTripDescription.tr(),
            child: IconButton(
              icon: const Icon(Icons.share),
              onPressed: () => _showSharingModalBottom(context),
            ),
          ),
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<TripCubit>().edit(),
        ),
        if (canShowGridView(context))
          BlocSelector<TripCubit, TripState, ViewMode>(
            selector: (state) => state.viewMode,
            builder: (context, viewMode) {
              return ViewModeActionButton(
                viewMode: viewMode,
                onPressed: () => context.read<TripCubit>().changeViewMode(),
              );
            },
          ),
      ],
    );
  }
}
