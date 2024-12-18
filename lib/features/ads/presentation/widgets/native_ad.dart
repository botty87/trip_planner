import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/di/di.dart';
import '../../domain/entities/ads.dart';
import '../cubit/ads_cubit.dart';
import 'native_ad_error.dart';
import 'native_ad_loaded.dart';

class NativeAd extends HookWidget {
  NativeAd.trips({super.key, this.padding, this.maxHeight = 105}) : ads = getIt<AdsTrips>();
  NativeAd.dayTrip({super.key, this.padding, this.maxHeight = 105}) : ads = getIt<AdsDayTrip>();
  NativeAd.trip({super.key, this.padding, this.maxHeight = 105}) : ads = getIt<AdsTrip>();
  NativeAd.tripStop({super.key, this.padding, this.maxHeight = 105}) : ads = getIt<AdsTripStop>();

  final Ads ads;
  final EdgeInsets? padding;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return BlocProvider(
      create: (context) => getIt<AdsCubit>(param1: ads),
      child: BlocBuilder<AdsCubit, AdsState>(
        builder: (context, state) {
          return AnimatedSize(
            key: const ValueKey('nativeAd'),
            duration: const Duration(milliseconds: 300),
            child: switch (state) {
              AdsInitial _ => const SizedBox.shrink(),
              AdsNotSupported _ => const SizedBox.shrink(),
              AdsError _ => NativeAdError(padding: padding),
              AdsLoaded(:final ad) => NativeAdLoaded(ad: ad, padding: padding, maxHeight: maxHeight),
            },
          );
        },
      ),
    );
  }
}
