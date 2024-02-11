import 'package:freezed_annotation/freezed_annotation.dart';

part 'background_container.freezed.dart';
part 'background_container.g.dart';

@freezed
class BackgroundContainer with _$BackgroundContainer {

  factory BackgroundContainer({
    required String url,
    required int index,
  }) = _BackgroundContainer;

  factory BackgroundContainer.fromJson(Map<String, dynamic> json) => _$BackgroundContainerFromJson(json);
}