import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../../ui/widgets/background/background_widget_container.dart';

class NoDayTripsWidget extends StatelessWidget {
  const NoDayTripsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: defaultPagePadding,
        child: BackgroundWidgetContainer(
          child: Column(
            children: [
              Expanded(child: SvgPicture(AssetBytesLoader(Assets.svg.noTripsSvg))),
              const SizedBox(height: verticalSpaceL),
              Text(
                LocaleKeys.noDayTripsYetAddOne.tr(),
                style: GoogleFonts.caveat(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
