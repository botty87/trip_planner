import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_places/domain/entities/suggestion.dart';
import 'package:google_places/domain/usecases/fetch_suggestions.dart';
import 'package:google_places/errors/google_places_failure.dart';
import 'package:mockito/mockito.dart';

import '../repositories/mock_google_places_repository.mocks.dart';

void main() {
  late FetchSuggestions usecase;
  late MockGooglePlacesRepository mockGooglePlacesRepository;

  final tSuggestions = [
    Suggestion(
      description: 'test',
      placeId: 'test',
    ),
  ];

  setUp(() {
    mockGooglePlacesRepository = MockGooglePlacesRepository();
    usecase = FetchSuggestions(mockGooglePlacesRepository);
  });

  test('should return right(List<Suggestion>) on success', () async {
    // arrange
    when(mockGooglePlacesRepository.fetchSuggestions(query: anyNamed('query'), token: anyNamed('token')))
        .thenAnswer((_) async => Right(tSuggestions));
    // act
    final result = await usecase(const FetchSuggestionsParams(query: 'test', token: 'test'));
    // assert
    expect(result, Right(tSuggestions));
    verify(mockGooglePlacesRepository.fetchSuggestions(query: 'test', token: 'test'));
    verifyNoMoreInteractions(mockGooglePlacesRepository);
  });

  test('should return left(GooglePlacesFailure) on failure', () async {
    // arrange
    when(mockGooglePlacesRepository.fetchSuggestions(query: anyNamed('query'), token: anyNamed('token')))
        .thenAnswer((_) async => const Left(GooglePlacesFailure.unknownError()));
    // act
    final result = await usecase(const FetchSuggestionsParams(query: 'test', token: 'test'));
    // assert
    expect(result, const Left(GooglePlacesFailure.unknownError()));
    verify(mockGooglePlacesRepository.fetchSuggestions(query: 'test', token: 'test'));
    verifyNoMoreInteractions(mockGooglePlacesRepository);
  });
}