import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/google_places/domain/entities/place_details.dart';
import 'package:trip_planner/features/google_places/domain/usecases/fetch_place_details.dart';
import 'package:trip_planner/features/google_places/errors/google_places_failure.dart';

import '../repositories/mock_google_places_repository.mocks.dart';

void main() {
  late FetchPlaceDetails usecase;
  late MockGooglePlacesRepository mockGooglePlacesRepository;

  final tPlacesDetails = PlaceDetails(
    placeId: 'test',
    lat: 0,
    lng: 0,
  );

  setUp(() {
    mockGooglePlacesRepository = MockGooglePlacesRepository();
    usecase = FetchPlaceDetails(mockGooglePlacesRepository);
  });

  test('should return right(PlaceDetails) on success', () async {
    // arrange
    when(mockGooglePlacesRepository.fetchPlaceDetails(placeId: anyNamed('placeId'), token: anyNamed('token')))
        .thenAnswer((_) async => Right(tPlacesDetails));
    // act
    final result = await usecase(FetchPlaceDetailsParams(placeId: 'test', token: 'test'));
    // assert
    expect(result, Right(tPlacesDetails));
    verify(mockGooglePlacesRepository.fetchPlaceDetails(placeId: 'test', token: 'test'));
    verifyNoMoreInteractions(mockGooglePlacesRepository);
  });

  test('should return left(GooglePlacesFailure) on failure', () async {
    // arrange
    when(mockGooglePlacesRepository.fetchPlaceDetails(placeId: anyNamed('placeId'), token: anyNamed('token')))
        .thenAnswer((_) async => Left(GooglePlacesFailure.unknownError()));
    // act
    final result = await usecase(FetchPlaceDetailsParams(placeId: 'test', token: 'test'));
    // assert
    expect(result, Left(GooglePlacesFailure.unknownError()));
    verify(mockGooglePlacesRepository.fetchPlaceDetails(placeId: 'test', token: 'test'));
    verifyNoMoreInteractions(mockGooglePlacesRepository);
  });
}
