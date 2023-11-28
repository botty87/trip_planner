import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../constants.dart';

abstract base class AddDestinationCard extends StatelessWidget {
  abstract final String assetName;
  abstract final String title;
  abstract final Color color;
  abstract final void Function(BuildContext context) onTap;

  const AddDestinationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap.call(context),
      child: Card(
        color: color,
        child: Padding(
          padding: cardPadding,
          child: Column(
            children: [
              Builder(builder: (context) {
                if (ResponsiveBreakpoints.of(context).largerThan(MOBILE)) {
                  return SizedBox(
                    height: 200,
                    child: SvgPicture(
                      AssetBytesLoader(assetName),
                    ),
                  );
                } else {
                  return AspectRatio(
                    aspectRatio: 3 / 2,
                    child: SvgPicture(
                      AssetBytesLoader(assetName),
                    ),
                  );
                }
              }),
              const SizedBox(height: verticalSpaceL),
              Text(
                title,
                style: GoogleFonts.caveat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
