import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../keys/env.dart';

abstract class Ads {
  //Banner id for testing in iOS and Android
  static const String _androidTestBannerId = 'ca-app-pub-3940256099942544/6300978111';
  static const String _iosTestBannerId = 'ca-app-pub-3940256099942544/2934735716';

  /// Native ad id for testing in iOS and Android
  static const String _androidTestNativeId = 'ca-app-pub-3940256099942544/2247696110';
  static const String _iosTestNativeId = 'ca-app-pub-3940256099942544/3986624511';

  final String _adUnitId;
  final AdsType _adType;

  const Ads(this._adUnitId, this._adType);

  String get adUnitId {
    if (kReleaseMode) {
      return _adUnitId;
    } else {
      return _testId;
    }
  }

  String get _testId {
    if (Platform.isAndroid) {
      switch (_adType) {
        case AdsType.banner:
          return _androidTestBannerId;
        case AdsType.native:
          return _androidTestNativeId;
      }
    } else if (Platform.isIOS) {
      switch (_adType) {
        case AdsType.banner:
          return _iosTestBannerId;
        case AdsType.native:
          return _iosTestNativeId;
      }
    } else {
      throw Exception('Unsupported platform');
    }
  }
}

enum AdsType { banner, native }

@lazySingleton
class AdsTrips extends Ads {
  AdsTrips() : super(Env.tripsAd, AdsType.native);
}

@lazySingleton
class AdsTrip extends Ads {
  AdsTrip() : super(Env.tripAd, AdsType.native);
}
