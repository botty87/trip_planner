import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
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
  final FirebaseCrashlytics _crashlytics;

  GooglePlacesRepositoryImpl(this.dataSource, this._crashlytics);

  @override
  Future<Either<GooglePlacesFailure, List<Suggestion>>> fetchSuggestions(
      {required String query, required String lang, required String token}) async {
    try {
      final suggestions = await dataSource.fetchSuggestions(query: query, lang: lang, token: token);
      return Right(suggestions);
    } on GooglePlacesException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return Left(_mapExceptionToFailure(e));
    } catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return Left(GooglePlacesFailure.unknownError(message: e.toString()));
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
      _crashlytics.recordError(e, StackTrace.current);
      return Left(_mapExceptionToFailure(e));
    } catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return Left(GooglePlacesFailure.unknownError(message: e.toString()));
    }
  }

  @override
  Future<Either<GooglePlacesFailure, List<TripStopsDirections>>> fetchTripStopsDirections(
      List<TripStop> tripStops, TravelMode travelMode) async {
    try {
      final result = await dataSource.fetchTripStopsDirections(tripStops, travelMode);
      return Right(result);
    } on GooglePlacesException catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return Left(_mapExceptionToFailure(e));
    } catch (e) {
      _crashlytics.recordError(e, StackTrace.current);
      return Left(GooglePlacesFailure.unknownError(message: e.toString()));
    }
  }
}
