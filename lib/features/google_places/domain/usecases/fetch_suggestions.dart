import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/google_places/domain/entities/suggestion.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/google_places_failure.dart';
import '../repositories/google_places_repository.dart';

@lazySingleton
class FetchSuggestions implements UseCase<void, FetchSuggestionsParams> {
  final GooglePlacesRepository repository;
  

  FetchSuggestions(this.repository);

  @override
  Future<Either<GooglePlacesFailure, List<Suggestion>>> call(FetchSuggestionsParams params) async {
    return await repository.fetchSuggestions(
      query: params.query,
      token: params.token,
    );
  }
}

class FetchSuggestionsParams {
  final String query;
  final String token;

  const FetchSuggestionsParams({
    required this.query,
    required this.token,
  });
}
