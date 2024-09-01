import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../core/di/di.dart';
import '../../../core/utilities/logger.dart';
import 'ads.dart';
import 'banner_ad_entity.dart';
import 'banner_ad_widget.dart';

@Deprecated('Use NativeAd instead')
class AdContainer extends StatefulWidget {
  const AdContainer({
    super.key,
    required this.ads,
    required this.child,
    this.position = AdPosition.top,
  });

  final Ads ads;
  final Widget child;
  final AdPosition position;

  @override
  State<AdContainer> createState() => _AdContainerState();
}

class _AdContainerState extends State<AdContainer> {
  final _ad = StreamController<BannerAdEntity?>();

  late final _crashlytics = getIt<FirebaseCrashlytics>();
  late final _logger = getIt<Logger>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadAd();
  }

  _loadAd() async {
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(MediaQuery.of(context).size.width.truncate());

    if (size == null) return;

    BannerAd(
      adUnitId: widget.ads.adUnitId,
      request: const AdRequest(),
      size: size,
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) =>
            _ad.add(BannerAdEntity(ad: ad as BannerAd, width: size.width.toDouble(), height: size.height.toDouble())),
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, err) {
          if (kReleaseMode) {
            _crashlytics.recordError(err, StackTrace.current);
          }
          _logger.error('Ad ${widget.ads.adUnitId} failed to load', exception: err, stackTrace: StackTrace.current);
          ad.dispose();
        },
      ),
    ).load();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: widget.position == AdPosition.bottom ? VerticalDirection.up : VerticalDirection.down,
      children: [
        StreamBuilder<BannerAdEntity?>(
          stream: _ad.stream,
          builder: (context, snapshot) {
            final bannerAd = snapshot.data;
            return AnimatedSize(
                duration: const Duration(milliseconds: 300),
                child: bannerAd != null ? BannerAdWidget(bannerAd: bannerAd) : const SizedBox.shrink());
          },
        ),
        Expanded(child: widget.child),
      ],
    );
  }

  @override
  void dispose() {
    _ad.close();
    super.dispose();
  }
}

enum AdPosition { top, bottom }
