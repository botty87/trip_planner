import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../keys/env.dart';

sealed class Ads {
  /// Native ad id for testing in iOS and Android
  static const String _androidTestNativeId = 'ca-app-pub-3940256099942544/2247696110';
  static const String _iosTestNativeId = 'ca-app-pub-3940256099942544/3986624511';

  final String _adUnitId;

  const Ads(this._adUnitId);

  String get adUnitId {
    if (kReleaseMode) {
      return _adUnitId;
    } else {
      return _testId;
    }
  }

  String get _testId {
    if (Platform.isAndroid) {
      return _androidTestNativeId;
    } else if (Platform.isIOS) {
      return _iosTestNativeId;
    } else {
      throw Exception('Unsupported platform');
    }
  }
}

@lazySingleton
class AdsTrips extends Ads {
  AdsTrips() : super(Env.tripsAd);
}

@lazySingleton
class AdsTrip extends Ads {
  AdsTrip() : super(Env.tripAd);
}

@lazySingleton
class AdsDayTrip extends Ads {
  AdsDayTrip() : super(Env.dayTripAd);
}

@lazySingleton
class AdsTripStop extends Ads {
  AdsTripStop() : super(Env.tripStopAd);
}
