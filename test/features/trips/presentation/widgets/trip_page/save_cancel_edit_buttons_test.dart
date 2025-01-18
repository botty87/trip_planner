import 'package:alchemist/alchemist.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/save_cancel_edit_buttons.dart';
import 'package:trip_planner/ui/widgets/trip/save_cancel_edit_buttons.dart';

import '../../../../../utils.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('renders SaveCancelEditButtons that contains GenericSaveCancelEditButtons', ($) async {
    await $.pumpWidget(TestUtils.defaultWidget(
      child: SaveCancelEditButtons(
        isSaving: const Stream.empty(),
        onCancel: () {},
        onSave: () {},
        errorMessage: const Stream.empty(),
      ),
    ));

    expect($(GenericSaveCancelEditButtons), findsOneWidget);
    expect($(LocaleKeys.cancel.tr()), findsOneWidget);
    expect($(LocaleKeys.save.tr()), findsOneWidget);
  });

  goldenTest(
    'renders SaveCancelEditButtons that contains GenericSaveCancelEditButtons',
    fileName: 'save_cancel_edit_buttons',
    builder: () => GoldenTestGroup(
      scenarioConstraints: const BoxConstraints(minWidth: 200),
      children: [
        GoldenTestScenario(
          name: 'normal',
          child: SaveCancelEditButtons(
            isSaving: const Stream.empty(),
            onCancel: () {},
            onSave: () {},
            errorMessage: const Stream.empty(),
          ),
        ),
      ],
    ),
  );
}
