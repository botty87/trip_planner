import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/google_places/data/datasources/google_places_data_source.dart';
import 'package:trip_planner/features/google_places/data/repositories/google_places_repository_impl.dart';
import 'package:trip_planner/features/google_places/domain/entities/suggestion.dart';
import 'package:trip_planner/features/google_places/errors/google_places_exception.dart';
import 'package:trip_planner/features/google_places/errors/google_places_failure.dart';

import 'google_places_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GooglePlacesDataSource>()])
void main() {
  late MockGooglePlacesDataSource mockGooglePlacesDataSource;
  late GooglePlacesRepositoryImpl repository;

  final tSuggestion = [
    Suggestion(
      description: 'description',
      placeId: 'placeId',
    )
  ];

  setUp(() {
    mockGooglePlacesDataSource = MockGooglePlacesDataSource();
    repository = GooglePlacesRepositoryImpl(mockGooglePlacesDataSource);
  });

  group('Failures', () {
    test(
        'On GooglePlacesException.noInternetConnection should return GooglePlacesFailure.noInternetConnection',
        () async {
      when(mockGooglePlacesDataSource.fetchSuggestions(
        query: anyNamed('query'),
        token: anyNamed('token'),
      )).thenThrow(GooglePlacesException.noInternetConnection());
      final result = await repository.fetchSuggestions(query: 'query', token: 'token');
      expect(result, const Left(GooglePlacesFailure.noInternetConnection()));
    });

    test('On GooglePlacesException.requestDenied should return GooglePlacesFailure.requestDenied',
        () async {
      when(mockGooglePlacesDataSource.fetchSuggestions(
        query: anyNamed('query'),
        token: anyNamed('token'),
      )).thenThrow(GooglePlacesException.requestDenied(message: 'message'));
      final result = await repository.fetchSuggestions(query: 'query', token: 'token');
      expect(result, const Left(GooglePlacesFailure.requestDenied(message: 'message')));
    });

    test(
        'On GooglePlacesException.requestCancelled should return GooglePlacesFailure.requestCancelled',
        () async {
      when(mockGooglePlacesDataSource.fetchSuggestions(
        query: anyNamed('query'),
        token: anyNamed('token'),
      )).thenThrow(GooglePlacesException.requestCancelled());
      final result = await repository.fetchSuggestions(query: 'query', token: 'token');
      expect(result, const Left(GooglePlacesFailure.requestCancelled()));
    });

    test('On GooglePlacesException.unknownError should return GooglePlacesFailure.unknownError',
        () async {
      when(mockGooglePlacesDataSource.fetchSuggestions(
        query: anyNamed('query'),
        token: anyNamed('token'),
      )).thenThrow(GooglePlacesException.unknownError(message: 'message'));
      final result = await repository.fetchSuggestions(query: 'query', token: 'token');
      expect(result, const Left(GooglePlacesFailure.unknownError(message: 'message')));
    });
  });

  test('On success should return a List<Suggestion>', () async {
    when(mockGooglePlacesDataSource.fetchSuggestions(
      query: anyNamed('query'),
      token: anyNamed('token'),
    )).thenAnswer((_) async => tSuggestion);

    final result = await repository.fetchSuggestions(query: 'query', token: 'token');
    expect(result, Right(tSuggestion));
  });
}
