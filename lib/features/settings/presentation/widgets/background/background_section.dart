import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/di/di.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/extensions.dart';
import '../settings_section_header.dart';

part 'images_grid.dart';

class BackgroundSection extends StatelessWidget {
  const BackgroundSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SettingsSectionHeader(title: LocaleKeys.background.tr()),
        const SizedBox(height: verticalSpaceS),
        _ImagesGrid()
      ],
    );
  }
}
