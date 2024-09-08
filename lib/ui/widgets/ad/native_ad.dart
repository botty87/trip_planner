import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' as ads;

import '../../../core/di/di.dart';
import '../../../core/utilities/logger.dart';
import 'ads.dart';

class NativeAd extends StatefulWidget {
  NativeAd.trips({super.key, this.padding, this.maxHeight = 105}) : ads = getIt<AdsTrips>();

  NativeAd.dayTrip({super.key, this.padding, this.maxHeight = 105}) : ads = getIt<AdsDayTrip>();

  NativeAd.trip({super.key, this.padding, this.maxHeight = 105}) : ads = getIt<AdsTrip>();

  NativeAd.tripStop({super.key, this.padding, this.maxHeight = 105}) : ads = getIt<AdsTripStop>();

  final Ads ads;
  final EdgeInsets? padding;
  final double maxHeight;

  @override
  State<NativeAd> createState() => _NativeAdState();
}

class _NativeAdState extends State<NativeAd> with AutomaticKeepAliveClientMixin {
  late final _crashlytics = getIt<FirebaseCrashlytics>();
  late final _logger = getIt<Logger>();

  ads.NativeAd? _ad;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  void _loadAd() {
    if (!kIsWeb) {
      ads.NativeAd(
        adUnitId: widget.ads.adUnitId,
        request: const ads.AdRequest(),
        nativeTemplateStyle: ads.NativeTemplateStyle(templateType: ads.TemplateType.small),
        listener: ads.NativeAdListener(
          onAdLoaded: (ad) {
            setState(() => _ad = ad as ads.NativeAd);
          },
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
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (kIsWeb) return const SizedBox.shrink();

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: _ad == null
          ? const SizedBox.shrink()
          : Container(
              //Add a margin to emulate the margin of the card
              margin: const EdgeInsets.symmetric(horizontal: 4),
              child: Padding(
                padding: widget.padding ?? EdgeInsets.zero,
                child: StatefulBuilder(
                  builder: (context, setState) {
                    return ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 320, // minimum recommended width
                        minHeight: 93, // minimum recommended height
                        maxHeight: widget.maxHeight,
                      ),
                      child: Center(child: ads.AdWidget(ad: _ad!)),
                    );
                  },
                ),
              ),
            ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
