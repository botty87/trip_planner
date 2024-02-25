import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/constants.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../gen/assets.gen.dart';

part '../widgets/tutorial_models.dart';

@RoutePage()
class TutorialPage extends StatelessWidget {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          _tripsTutorial,
        ],
        showSkipButton: true,
        showNextButton: false,
        skip: Text(LocaleKeys.skip.tr()),
        done: Text(LocaleKeys.done.tr()),
        onDone: () {
          // On button pressed
        },
      ),
    );
  }
}
