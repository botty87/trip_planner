import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:trip_planner/features/ui/presentation/widgets/trip/save_cancel_edit_buttons.dart';
import 'package:trip_planner/features/trips/presentation/widgets/trip_page/save_cancel_edit_buttons.dart';

import '../../../../../utils.dart';

void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  testWidgets('renders SaveCancelEditButtons that contains GenericSaveCancelEditButtons',
      (tester) async {
    await tester.pumpWidget(TestUtils.defaultWidget(
      child: SaveCancelEditButtons(
        isSaving: const Stream.empty(),
        onCancel: () {},
        onSave: () {},
        errorMessage: const Stream.empty(),
      ),
    ));

    expect(find.byType(GenericSaveCancelEditButtons), findsOneWidget);
  });

  //Golden test
  testGoldens('renders SaveCancelEditButtons that contains GenericSaveCancelEditButtons',
      (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        Device.tabletPortrait,
      ])
      ..addScenario(
        name: 'SaveCancelEditButtons',
        widget: SaveCancelEditButtons(
          isSaving: const Stream.empty(),
          onCancel: () {},
          onSave: () {},
          errorMessage: const Stream.empty(),
        ),
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'save_cancel_edit_buttons');
  });
}
