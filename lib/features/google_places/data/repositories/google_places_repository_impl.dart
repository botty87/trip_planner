import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
import 'package:injectable/injectable.dart';

import '../../../day_trips/domain/entities/trip_stops_directions.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../domain/entities/place_details.dart';
import '../../domain/entities/suggestion.dart';
import '../../domain/repositories/google_places_repository.dart';
import '../../errors/google_places_exception.dart';
import '../../errors/google_places_failure.dart';
import '../datasources/google_places_data_source.dart';

@LazySingleton(as: GooglePlacesRepository)
class GooglePlacesRepositoryImpl implements GooglePlacesRepository {
  final GooglePlacesDataSource dataSource;

  GooglePlacesRepositoryImpl(this.dataSource);

  @override
  Future<Either<GooglePlacesFailure, List<Suggestion>>> fetchSuggestions(
      {required String query, required String lang, required String token}) async {
    try {
      final suggestions = await dataSource.fetchSuggestions(query: query, lang: lang, token: token);
      return Right(suggestions);
    } on GooglePlacesException catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  GooglePlacesFailure _mapExceptionToFailure(GooglePlacesException exception) {
    return exception.when(
      noInternetConnection: () => const GooglePlacesFailure.noInternetConnection(),
      requestDenied: (message) => GooglePlacesFailure.requestDenied(message: message),
      requestCancelled: () => const GooglePlacesFailure.requestCancelled(),
      unknownError: (message) => GooglePlacesFailure.unknownError(message: message),
    );
  }

  @override
  Future<Either<GooglePlacesFailure, PlaceDetails>> fetchPlaceDetails(
      {required String placeId, required String token}) async {
    try {
      final placeDetails = await dataSource.fetchPlaceDetails(placeId: placeId, token: token);
      return Right(placeDetails);
    } on GooglePlacesException catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<GooglePlacesFailure, List<TripStopsDirections>>> fetchTripStopsDirections(
      List<TripStop> tripStops) async {
    try {
      final result = await dataSource.fetchTripStopsDirections(tripStops);
      return Right(result);
    } on GooglePlacesException catch (e) {
      return Left(_mapExceptionToFailure(e));
    } catch (e) {
      return Left(GooglePlacesFailure.unknownError(message: e.toString()));
    }
  }
}
