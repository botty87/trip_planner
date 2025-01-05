// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_stops_directions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripStopsDirectionsImpl _$$TripStopsDirectionsImplFromJson(
        Map<String, dynamic> json) =>
    _$TripStopsDirectionsImpl(
      originId: json['originId'] as String,
      destinationId: json['destinationId'] as String,
      points: geoPointsToLatLngs(json['points'] as List?),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$TripStopsDirectionsImplToJson(
        _$TripStopsDirectionsImpl instance) =>
    <String, dynamic>{
      'originId': instance.originId,
      'destinationId': instance.destinationId,
      'points': latLngsToGeoPoints(instance.points),
      if (instance.errorMessage case final value?) 'errorMessage': value,
    };
