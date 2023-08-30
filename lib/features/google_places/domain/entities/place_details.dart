import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_details.freezed.dart';

@freezed
class PlaceDetails with _$PlaceDetails {
  factory PlaceDetails({
    required String placeId,
    required double lat,
    required double lng,
  }) = _PlaceDetails;
}
