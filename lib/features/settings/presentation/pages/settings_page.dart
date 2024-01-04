import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import '../../../../core/constants.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../cubit/settings_cubit.dart';

part '../widgets/day_trip/day_trip_section.dart';
part '../widgets/day_trip/day_trip_start_time_time_input.dart';
part '../widgets/day_trip/show_directions_switch.dart';
part '../widgets/day_trip/use_directions_colors_switch.dart';
part '../widgets/day_trip/mode_selector.dart';
part '../widgets/settings_body.dart';
part '../widgets/settings_section_header.dart';



@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settings.tr()),
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          }
          context.read<SettingsCubit>().updateSettings();

          if (context.mounted) {
            Navigator.of(context).pop();
          }
        },
        child: const _SettingsBody(),
      ),
    );
  }
}
