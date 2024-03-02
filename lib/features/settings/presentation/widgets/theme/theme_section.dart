import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/extensions.dart';
import '../../cubit/settings_cubit.dart';
import '../settings_section_header.dart';

part 'mode_selector.dart';

class ThemeSection extends StatelessWidget {
  const ThemeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SettingsSectionHeader(title: LocaleKeys.theme.tr()),
        const _ModeSelector(),
      ],
    );
  }
}
