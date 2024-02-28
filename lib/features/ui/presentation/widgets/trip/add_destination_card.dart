import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';

final class AddDestinationCard extends StatelessWidget {
  final String assetName;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const AddDestinationCard({
    super.key,
    required this.assetName,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2,
        color: color,
        child: Padding(
          padding: cardPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Builder(builder: (context) {
                if (ResponsiveBreakpoints.of(context).largerThan(MOBILE)) {
                  return SizedBox(
                    height: 200,
                    child: SvgPicture(AssetBytesLoader(assetName)),
                  );
                } else {
                  return AspectRatio(
                    aspectRatio: 3 / 2,
                    child: SvgPicture(AssetBytesLoader(assetName)),
                  );
                }
              }),
              const SizedBox(height: verticalSpaceL),
              Text(
                title,
                style: GoogleFonts.caveat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
