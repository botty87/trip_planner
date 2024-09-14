import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' as googleAds;

import '../../../../core/utilities/logger.dart';
import '../../domain/entities/ads.dart';

part 'ads_state.dart';
part 'ads_cubit.freezed.dart';

@injectable
class AdsCubit extends Cubit<AdsState> {
  AdsCubit({@factoryParam required Ads ads, required FirebaseCrashlytics crashlytics, required Logger logger})
      : _ads = ads,
        _crashlytics = crashlytics,
        _logger = logger,
        super(AdsState.initial());

  final Ads _ads;

  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  @PostConstruct()
  void loadAds() {
    if (kIsWeb) {
      emit(const AdsState.notSupported());
      return;
    }

    googleAds.NativeAd(
      adUnitId: _ads.adUnitId,
      request: const googleAds.AdRequest(),
      nativeTemplateStyle: googleAds.NativeTemplateStyle(templateType: googleAds.TemplateType.small),
      listener: googleAds.NativeAdListener(
        onAdLoaded: (ad) {
          emit(AdsState.loaded(ad: ad as googleAds.NativeAd));
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();

          if (kReleaseMode) {
            _crashlytics.recordError(err, StackTrace.current);
          }
          _logger.error('Ad ${_ads.adUnitId} failed to load', exception: err, stackTrace: StackTrace.current);
          emit(const AdsState.error());
        },
      ),
    ).load();
  }
}
