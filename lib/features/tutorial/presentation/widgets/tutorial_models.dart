part of '../pages/tutorial_page.dart';

final _tripsTutorial = PageViewModel(
  title: LocaleKeys.tripsTutorialTitle.tr(),
  body: LocaleKeys.tripsTutorialBody.tr(),
  image: Assets.tutorial.tripsPage.image(),
  decoration: const PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: tutorialTitleFontSize,
      fontWeight: FontWeight.w700,
    ),
    bodyTextStyle: TextStyle(fontSize: tutorialBodyFontSize),
    imageFlex: 5,
    bodyFlex: 3,
    footerFlex: 1,
  ),
);

final _dayTripsTutorial = PageViewModel(
  title: LocaleKeys.dayTripsTutorialTitle.tr(),
  body: LocaleKeys.dayTripsTutorialBody.tr(),
  image: Assets.tutorial.dayTripsPage.image(),
  decoration: const PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: tutorialTitleFontSize,
      fontWeight: FontWeight.w700,
    ),
    bodyTextStyle: TextStyle(fontSize: tutorialBodyFontSize),
    imageFlex: 5,
    bodyFlex: 3,
    footerFlex: 1,
  ),
);