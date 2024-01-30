import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../../../core/constants.dart';
import '../../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../../gen/assets.gen.dart';

class NoTripStopsMapWidget extends StatelessWidget {
  const NoTripStopsMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: defaultPagePadding,
      child: Column(
        children: [
          Expanded(child: SvgPicture(AssetBytesLoader(Assets.svg.emptyMapSvg))),
          const SizedBox(height: verticalSpaceL),
          Text(
            LocaleKeys.whatADesertHere.tr(),
            style: GoogleFonts.caveat(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
