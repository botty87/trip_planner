import 'package:equatable/equatable.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdEntity extends Equatable {
  const BannerAdEntity({
    required this.ad,
    required this.width,
    required this.height,
  });

  final BannerAd ad;
  final double width;
  final double height;

  @override
  List<Object?> get props => [ad, width, height];
}
