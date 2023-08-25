import 'package:dartz/dartz.dart';
import 'package:trip_planner/features/google_places/domain/entities/suggestion.dart';
import 'package:trip_planner/features/google_places/errors/google_places_failure.dart';

abstract class GooglePlacesRepository {
  Future<Either<GooglePlacesFailure, List<Suggestion>>> fetchSuggestions({required String query, required String token});
}