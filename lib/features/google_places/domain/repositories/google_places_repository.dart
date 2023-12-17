import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../day_trips/domain/entities/trip_stops_directions.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../errors/google_places_failure.dart';
import '../entities/place_details.dart';
import '../entities/suggestion.dart';

abstract class GooglePlacesRepository {
  Future<Either<GooglePlacesFailure, List<Suggestion>>> fetchSuggestions(
      {required String query, required String lang, required String token});
  Future<Either<GooglePlacesFailure, PlaceDetails>> fetchPlaceDetails(
      {required String placeId, required String token});

  Future<Either<GooglePlacesFailure, List<TripStopsDirections>>> fetchTripStopsDirections(
      List<TripStop> tripStops);
}
