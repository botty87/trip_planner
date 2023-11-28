import 'package:dartz/dartz.dart';

import '../../errors/google_places_failure.dart';
import '../entities/place_details.dart';
import '../entities/suggestion.dart';

abstract class GooglePlacesRepository {
  Future<Either<GooglePlacesFailure, List<Suggestion>>> fetchSuggestions(
      {required String query, required String lang, required String token});
  Future<Either<GooglePlacesFailure, PlaceDetails>> fetchPlaceDetails(
      {required String placeId, required String token});
}
