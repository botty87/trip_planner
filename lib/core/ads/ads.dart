import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../keys/env.dart';

abstract class Ads {
  //Banner id for testing in iOS and Android
  static const String _androidTestId = 'ca-app-pub-3940256099942544/6300978111';
  static const String _iosTestId = 'ca-app-pub-3940256099942544/2934735716';

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
      return _androidTestId;
    } else if (Platform.isIOS) {
      return _iosTestId;
    } else {
      throw Exception('Unsupported platform');
    }
  }
}

@lazySingleton
class AdsTrips extends Ads {
  AdsTrips() : super(Env.tripsAdBanner);
}
