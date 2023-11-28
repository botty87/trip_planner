import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/google_places_failure.dart';
import '../entities/suggestion.dart';
import '../repositories/google_places_repository.dart';

@lazySingleton
class FetchSuggestions implements UseCase<void, FetchSuggestionsParams> {
  final GooglePlacesRepository repository;

  FetchSuggestions(this.repository);

  @override
  Future<Either<GooglePlacesFailure, List<Suggestion>>> call(FetchSuggestionsParams params) async {
    return await repository.fetchSuggestions(
      query: params.query,
      lang: params.lang,
      token: params.token,
    );
  }
}

class FetchSuggestionsParams {
  final String query;
  final String lang;
  final String token;

  const FetchSuggestionsParams({
    required this.query,
    required this.lang,
    required this.token,
  });
}
