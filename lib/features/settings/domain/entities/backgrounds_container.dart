import 'package:freezed_annotation/freezed_annotation.dart';

part 'backgrounds_container.freezed.dart';
part 'backgrounds_container.g.dart';

@freezed
class BackgroundsContainer with _$BackgroundsContainer {
  const factory BackgroundsContainer({
    int? lightBackgroundIndex,
    int? darkBackgroundIndex,
  }) = _BackgroundsContainer;

  factory BackgroundsContainer.fromJson(Map<String, dynamic> json) =>
      _$BackgroundsContainerFromJson(json);
}

enum BackgroundType { light, dark }
