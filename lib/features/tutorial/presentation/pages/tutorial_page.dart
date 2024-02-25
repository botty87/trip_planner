import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/routes/app_router.gr.dart';
import '../../../../gen/assets.gen.dart';
import '../cubit/cubit/tutorial_cubit.dart';

part '../widgets/tutorial_models.dart';

@RoutePage()
class TutorialPage extends StatelessWidget {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TutorialCubit>(),
      child: Builder(
        builder: (context) {
          return SafeArea(
            child: IntroductionScreen(
              pages: [
                _tripsTutorial,
                _dayTripsTutorial,
              ],
              showSkipButton: true,
              showNextButton: false,
              skip: Text(LocaleKeys.skip.tr()),
              done: Text(LocaleKeys.done.tr()),
              onDone: () {
                //TODO restore this line when the tutorial is ready
                //context.read<TutorialCubit>().onDone();
                context.router.replaceAll([const TripsRoute()]);
              },
            ),
          );
        }
      ),
    );
  }
}