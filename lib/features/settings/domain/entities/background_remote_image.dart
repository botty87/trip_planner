import 'package:freezed_annotation/freezed_annotation.dart';

part 'background_remote_image.freezed.dart';
part 'background_remote_image.g.dart';

@freezed
class BackgroundRemoteImage with _$BackgroundRemoteImage {
  const factory BackgroundRemoteImage({
    required String url,
    required int index,
  }) = _BackgroundRemoteImage;

  factory BackgroundRemoteImage.fromJson(Map<String, dynamic> json) =>
      _$BackgroundRemoteImageFromJson(json);
}
