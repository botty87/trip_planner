import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' as google_ads;
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utilities/logger.dart';
import '../../domain/entities/ads.dart';

part 'ads_cubit.freezed.dart';
part 'ads_state.dart';

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

    google_ads.NativeAd(
      adUnitId: _ads.adUnitId,
      request: const google_ads.AdRequest(),
      nativeTemplateStyle: google_ads.NativeTemplateStyle(templateType: google_ads.TemplateType.small),
      listener: google_ads.NativeAdListener(
        onAdLoaded: (ad) {
          emit(AdsState.loaded(ad: ad as google_ads.NativeAd));
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();

          if (kReleaseMode) {
            _crashlytics.recordError(err, StackTrace.current);
          }
          if (!kDebugMode) {
            _logger.error('Ad ${_ads.adUnitId} failed to load', exception: err, stackTrace: StackTrace.current);
          }
          emit(const AdsState.error());
        },
      ),
    ).load();
  }
}
