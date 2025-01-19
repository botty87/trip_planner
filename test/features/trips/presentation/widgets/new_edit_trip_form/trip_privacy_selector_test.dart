import 'package:alchemist/alchemist.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/widgets/new_edit_trip_form/trip_privacy_selector.dart';

import '../../../../../utils.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });
  
  patrolWidgetTest('render NewEditTripFormPrivacySelector', ($) async {
    await $.pumpWidget(TestUtils.defaultWidget(
      child: NewEditTripFormPrivacySelector(
        onIsPublicChanged: (_) {},
        initialIsPublic: false,
      ),
    ));

    expect($(LocaleKeys.tripPrivacy.tr()), findsOneWidget);
    expect($(LocaleKeys.public.tr()), findsOneWidget);
    expect($(LocaleKeys.private.tr()), findsOneWidget);
  });

  goldenTest(
    'render NewEditTripFormPrivacySelector',
    fileName: 'new_edit_trip_form_privacy_selector',
    builder: () => GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'is private',
          child: NewEditTripFormPrivacySelector(
            onIsPublicChanged: (_) {},
            initialIsPublic: false,
          ),
        ),
        GoldenTestScenario(
          name: 'is public',
          child: NewEditTripFormPrivacySelector(
            onIsPublicChanged: (_) {},
            initialIsPublic: true,
          ),
        ),
      ],
    ),
  );
}
