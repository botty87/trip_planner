import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../ui/widgets/adaptive/gap.dart';
import '../../../../../ui/widgets/adaptive/row_column.dart';
import '../../../../../ui/widgets/background/background_widget_container.dart';
import '../../../../ads/presentation/widgets/native_ad.dart';

class NoTripsWidget extends StatelessWidget {
  const NoTripsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(verticalSpaceL),
      child: RowColumn(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height * 0.4
                  : double.infinity,
              maxWidth: MediaQuery.of(context).orientation == Orientation.landscape
                  ? MediaQuery.of(context).size.width * 0.4
                  : double.infinity,
            ),
            child: NativeAd.trips(),
          ),
          const Gap(verticalSpaceS),
          Expanded(
            child: BackgroundWidgetContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      LocaleKeys.noTripAddOne.tr(),
                      style: GoogleFonts.caveat(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: SvgPicture(
                      AssetBytesLoader(Assets.svg.tripSvg),
                    ),
                  ),
                  Transform.rotate(
                    angle: 160,
                    child: Transform.flip(
                      flipX: true,
                      child: SvgPicture(
                        AssetBytesLoader(Assets.svg.arrowSvg),
                        height: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
