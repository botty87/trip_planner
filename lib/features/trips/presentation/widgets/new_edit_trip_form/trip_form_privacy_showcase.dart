
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../../core/l10n/locale_keys.g.dart';

class NewEditTripFormPrivacyShowcase extends StatelessWidget {
  const NewEditTripFormPrivacyShowcase({super.key, required this.showCaseKey, required this.child});

  final GlobalKey showCaseKey;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final EdgeInsets showcasePadding;
    showcasePadding = const EdgeInsets.only(bottom: 40);

    return Showcase(
      key: showCaseKey,
      title: LocaleKeys.tripPrivacyShowCaseTitle.tr(),
      description: LocaleKeys.tripPrivacyShowCaseBody.tr(),
      targetPadding: showcasePadding,
      child: child,
    );
  }
}
