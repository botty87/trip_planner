import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/extensions.dart';
import '../../../../../ui/cubit/backgrounds_cubit.dart';
import '../../../domain/entities/backgrounds_container.dart';
import '../../cubit/settings_cubit.dart';
import '../settings_section_header.dart';

part 'image_builder.dart';
part 'images_grid.dart';
part 'no_background_button.dart';

class BackgroundSection extends StatelessWidget {
  const BackgroundSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettingsSectionHeader(title: LocaleKeys.tripsBackground.tr()),
        _ImagesGrid(),
      ],
    );
  }
}
