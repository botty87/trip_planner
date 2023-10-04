import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places/data/datasources/google_places_data_source.dart';
import 'package:google_places/data/repositories/google_places_repository_impl.dart';
import 'package:google_places/domain/entities/place_details.dart';
import 'package:google_places/domain/entities/suggestion.dart';
import 'package:google_places/errors/google_places_exception.dart';
import 'package:google_places/errors/google_places_failure.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

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

  const tPlaceDetails = PlaceDetails(placeId: 'placeId', location: LatLng(0, 0));

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
      )).thenThrow(const GooglePlacesException.noInternetConnection());
      final result = await repository.fetchSuggestions(query: 'query', token: 'token');
      expect(result, const Left(GooglePlacesFailure.noInternetConnection()));
    });

    test('On GooglePlacesException.requestDenied should return GooglePlacesFailure.requestDenied',
        () async {
      when(mockGooglePlacesDataSource.fetchSuggestions(
        query: anyNamed('query'),
        token: anyNamed('token'),
      )).thenThrow(const GooglePlacesException.requestDenied(message: 'message'));
      final result = await repository.fetchSuggestions(query: 'query', token: 'token');
      expect(result, const Left(GooglePlacesFailure.requestDenied(message: 'message')));
    });

    test(
        'On GooglePlacesException.requestCancelled should return GooglePlacesFailure.requestCancelled',
        () async {
      when(mockGooglePlacesDataSource.fetchSuggestions(
        query: anyNamed('query'),
        token: anyNamed('token'),
      )).thenThrow(const GooglePlacesException.requestCancelled());
      final result = await repository.fetchSuggestions(query: 'query', token: 'token');
      expect(result, const Left(GooglePlacesFailure.requestCancelled()));
    });

    test('On GooglePlacesException.unknownError should return GooglePlacesFailure.unknownError',
        () async {
      when(mockGooglePlacesDataSource.fetchSuggestions(
        query: anyNamed('query'),
        token: anyNamed('token'),
      )).thenThrow(const GooglePlacesException.unknownError(message: 'message'));
      final result = await repository.fetchSuggestions(query: 'query', token: 'token');
      expect(result, const Left(GooglePlacesFailure.unknownError(message: 'message')));
    });
  });

  test('Call fetchSuggestion. On success should return a List<Suggestion>', () async {
    when(mockGooglePlacesDataSource.fetchSuggestions(
      query: anyNamed('query'),
      token: anyNamed('token'),
    )).thenAnswer((_) async => tSuggestion);

    final result = await repository.fetchSuggestions(query: 'query', token: 'token');
    expect(result, Right(tSuggestion));
  });

  test('Call fetchPlaceDetails. On success should return a PlaceDetails', () async {
    when(mockGooglePlacesDataSource.fetchPlaceDetails(
      placeId: anyNamed('placeId'),
      token: anyNamed('token'),
    )).thenAnswer((_) async => tPlaceDetails);

    final result = await repository.fetchPlaceDetails(placeId: 'placeId', token: 'token');
    expect(result, const Right(tPlaceDetails));
  });
}