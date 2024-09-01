import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../../../core/constants.dart';
import '../../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../../core/utilities/extensions.dart';
import '../../../../../../../gen/assets.gen.dart';
import '../../../../../../../ui/widgets/background/background_widget_container.dart';

class NoTripStopsMapWidget extends StatelessWidget {
  final double imageHeight;
  const NoTripStopsMapWidget({super.key, required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidgetContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: verticalSpace),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.isDarkMode
                    ? Theme.of(context).colorScheme.inverseSurface.withOpacity(0.8)
                    : Colors.transparent,
              ),
              padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceS),
              child: SvgPicture(
                height: imageHeight,
                AssetBytesLoader(Assets.svg.emptyMapSvg),
              ),
            ),
          ),
          const SizedBox(height: verticalSpaceL),
          Padding(
            padding: const EdgeInsets.only(bottom: verticalSpaceS),
            child: Text(
              LocaleKeys.whatADesertHere.tr(),
              style: GoogleFonts.caveat(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
