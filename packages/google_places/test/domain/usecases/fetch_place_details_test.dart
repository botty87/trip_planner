import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places/domain/entities/place_details.dart';
import 'package:google_places/domain/usecases/fetch_place_details.dart';
import 'package:google_places/errors/google_places_failure.dart';
import 'package:mockito/mockito.dart';

import '../repositories/mock_google_places_repository.mocks.dart';

void main() {
  late FetchPlaceDetails usecase;
  late MockGooglePlacesRepository mockGooglePlacesRepository;

  const tPlacesDetails = PlaceDetails(
    placeId: 'test',
    location: LatLng(0, 0),
  );

  setUp(() {
    mockGooglePlacesRepository = MockGooglePlacesRepository();
    usecase = FetchPlaceDetails(mockGooglePlacesRepository);
  });

  test('should return right(PlaceDetails) on success', () async {
    // arrange
    when(mockGooglePlacesRepository.fetchPlaceDetails(placeId: anyNamed('placeId'), token: anyNamed('token')))
        .thenAnswer((_) async => const Right(tPlacesDetails));
    // act
    final result = await usecase(const FetchPlaceDetailsParams(placeId: 'test', token: 'test'));
    // assert
    expect(result, const Right(tPlacesDetails));
    verify(mockGooglePlacesRepository.fetchPlaceDetails(placeId: 'test', token: 'test'));
    verifyNoMoreInteractions(mockGooglePlacesRepository);
  });

  test('should return left(GooglePlacesFailure) on failure', () async {
    // arrange
    when(mockGooglePlacesRepository.fetchPlaceDetails(placeId: anyNamed('placeId'), token: anyNamed('token')))
        .thenAnswer((_) async => const Left(GooglePlacesFailure.unknownError()));
    // act
    final result = await usecase(const FetchPlaceDetailsParams(placeId: 'test', token: 'test'));
    // assert
    expect(result, const Left(GooglePlacesFailure.unknownError()));
    verify(mockGooglePlacesRepository.fetchPlaceDetails(placeId: 'test', token: 'test'));
    verifyNoMoreInteractions(mockGooglePlacesRepository);
  });
}
