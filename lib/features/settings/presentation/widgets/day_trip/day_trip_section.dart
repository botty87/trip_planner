import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../cubit/settings_cubit.dart';
import '../settings_section_header.dart';

part 'day_trip_start_time_time_input.dart';
part 'show_directions_switch.dart';
part 'use_directions_colors_switch.dart';
part 'mode_selector.dart';

class DayTripSection extends StatelessWidget {
  const DayTripSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SettingsSectionHeader(title: LocaleKeys.dayTrip.tr()),
        const SizedBox(height: verticalSpaceS),
        const _DayTripStartTimeInput(),
        const SizedBox(height: verticalSpaceS),
        const _ShowDirectionsSwitch(),
        const SizedBox(height: verticalSpaceS),
        const _UseDirectionsColorsSwitch(),
        const SizedBox(height: verticalSpaceS),
        const _ModeSelector(),
      ],
    );
  }
}
