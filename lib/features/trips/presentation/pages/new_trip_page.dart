import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../gen/assets.gen.dart';

@RoutePage()
class NewTripPage extends StatelessWidget {
  const NewTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.newTrip.tr()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SvgPicture(
              AssetBytesLoader(Assets.svg.travelersSvg),
            ),
          ),
          const SizedBox(height: VERTICAL_SPACE_L),
          Expanded(
            child: SafeArea(
              minimum: DEFAULT_PAGE_PADDING,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: LocaleKeys.whatNameTrip.tr(),
                    ),
                  ),
                  const SizedBox(height: VERTICAL_SPACE_L),
                  ElevatedButton(
                    child: Text(LocaleKeys.createTrip.tr()),
                    onPressed: () {},
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
