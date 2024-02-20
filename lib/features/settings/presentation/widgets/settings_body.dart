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
    return ListView(
      padding: defaultPagePadding,
      children: const [
        DayTripSection(),
        if (!kIsWeb) ...[
          SizedBox(height: verticalSpaceL),
          BackgroundSection(),
        ],
        SizedBox(height: verticalSpaceL),
        SafeArea(child: ThemeSection()),
      ],
    );
  }
}
