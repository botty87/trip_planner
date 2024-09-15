import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' as google_ads;

class NativeAdLoaded extends StatelessWidget {
  const NativeAdLoaded({
    super.key,
    required this.ad,
    required this.maxHeight,
    this.padding,
  });

  final google_ads.AdWithView ad;
  final double maxHeight;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 320, // minimum recommended width
            minHeight: 93, // minimum recommended height
            maxHeight: maxHeight,
          ),
          child: Center(child: google_ads.AdWidget(ad: ad)),
        ),
      ),
    );
  }
}
