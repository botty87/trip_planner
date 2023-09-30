import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'place_details.freezed.dart';

@freezed
class PlaceDetails with _$PlaceDetails {
  const factory PlaceDetails({
    required String placeId,
    required LatLng location,
  }) = _PlaceDetails;
}
