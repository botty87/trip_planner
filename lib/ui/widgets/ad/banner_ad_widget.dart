import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../core/ads/banner_ad_entity.dart';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key, required this.bannerAd});

  final BannerAdEntity bannerAd;

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: widget.bannerAd.height,
          maxWidth: 728,
        ),
        child: AdWidget(key: ValueKey(widget.bannerAd.ad.toString()), ad: widget.bannerAd.ad),
      ),
    );
  }
}
