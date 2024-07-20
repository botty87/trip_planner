import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import 'background/background_section.dart';
import 'day_trip/day_trip_section.dart';
import 'theme/theme_section.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: (availableBackgrounds + 1) * 150 + 100),
        child: ListView(
          padding: defaultPagePadding,
          children: const [
            Center(
              child: Wrap(
                spacing: horizontalSpaceL * 2,
                runSpacing: verticalSpaceL,
                alignment: WrapAlignment.center,
                children: [
                  DayTripSection(),
                  ThemeSection(),
                ],
              ),
            ),
            if (!kIsWeb) ...[
              SizedBox(height: verticalSpaceL),
              SafeArea(child: BackgroundSection()),
            ],
          ],
        ),
      ),
    );
  }
}
