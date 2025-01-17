import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:trip_planner/features/trip_stops/presentation/widgets/new_edit_trip_stop_form/new_edit_trip_stop_form.dart';

import '../../../../utils.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  patrolWidgetTest('Should show Field Widget', ($) async {
    await $.pumpWidget(TestUtils.defaultWidget(
      child: FieldWidget(
        onDescriptionChanged: (value) {},
        label: 'label',
        hint: 'hint',
      ),
    ));

    expect($(TextField), findsOneWidget);
    expect($(TextFormField), findsNothing);
    expect($('label'), findsOneWidget);
    expect($('hint'), findsOneWidget);
  });
}
