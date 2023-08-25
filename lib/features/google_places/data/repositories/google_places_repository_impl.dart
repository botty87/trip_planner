import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/google_places/data/datasources/google_places_data_source.dart';

import '../../domain/entities/suggestion.dart';
import '../../domain/repositories/google_places_repository.dart';
import '../../errors/google_places_exception.dart';
import '../../errors/google_places_failure.dart';

@LazySingleton(as: GooglePlacesRepository)
class GooglePlacesRepositoryImpl implements GooglePlacesRepository {
  final GooglePlacesDataSource dataSource;

  GooglePlacesRepositoryImpl(this.dataSource);
  
  @override
  Future<Either<GooglePlacesFailure, List<Suggestion>>> fetchSuggestions({required String query, required String token}) async {
    try {
      final suggestions = await dataSource.fetchSuggestions(query: query, token: token);
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
    );
  }
}