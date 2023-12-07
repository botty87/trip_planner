import 'package:freezed_annotation/freezed_annotation.dart';

part 'old_place.freezed.dart';

@freezed
class OldPlace with _$OldPlace {
  const factory OldPlace({
    required String name,
    required String? note,
    required int position,
    required double latitude,
    required double longitude,
  }) = _OldPlace;
}
