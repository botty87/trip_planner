import 'package:freezed_annotation/freezed_annotation.dart';

part 'background_container.freezed.dart';
part 'background_container.g.dart';

@freezed
class BackgroundContainer with _$BackgroundContainer {
  const BackgroundContainer._();

  const factory BackgroundContainer({
    required String url,
    required int index,
  }) = _BackgroundContainer;

  //If the index is even the image is light, if the index is odd the image is dark
  bool get isLight => index.isEven;

  factory BackgroundContainer.fromJson(Map<String, dynamic> json) =>
      _$BackgroundContainerFromJson(json);
}
