import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/google_places/domain/entities/place_details.dart';
import 'package:trip_planner/features/google_places/domain/entities/suggestion.dart';
import 'package:trip_planner/features/google_places/domain/usecases/fetch_place_details.dart';
import 'package:trip_planner/features/google_places/domain/usecases/fetch_suggestions.dart';
import 'package:trip_planner/features/google_places/errors/google_places_failure.dart';
import 'package:trip_planner/features/google_places/presentation/cubit/google_places_cubit.dart';

import 'google_places_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FetchSuggestions>(),
  MockSpec<FetchPlaceDetails>(),
])
void main() {
  late MockFetchSuggestions mockFetchSuggestions;
  late MockFetchPlaceDetails mockFetchPlaceDetails;

  setUp(() {
    mockFetchSuggestions = MockFetchSuggestions();
    mockFetchPlaceDetails = MockFetchPlaceDetails();
  });

  final tSuggestions = [
    Suggestion(
      description: 'Paris, France',
      placeId: 'ChIJD7fiBh9u5kcRYJSMaMOCCwQ',
    ),
    Suggestion(
      description: 'Paris, TX, USA',
      placeId: 'ChIJzTxHThv_YIYR7ear9zg3dgI',
    ),
  ];

  final tPlaceDetails = PlaceDetails(
    placeId: 'ChIJD7fiBh9u5kcRYJSMaMOCCwQ',
    lat: 48.856614,
    lng: 2.3522219,
  );

  blocTest<GooglePlacesCubit, GooglePlacesState>(
    'On fetchSuggestions if query is less than 2 characters, emit normal state with empty suggestions',
    build: () => GooglePlacesCubit(
      fetchSuggestions: mockFetchSuggestions,
      fetchPlaceDetails: mockFetchPlaceDetails,
    ),
    seed: () => GooglePlacesState.normal(suggestions: tSuggestions),
    act: (cubit) => cubit.fetchSuggestions(''),
    expect: () => [GooglePlacesState.normal()],
  );

  blocTest<GooglePlacesCubit, GooglePlacesState>(
    'On fetchSuggestions if query is more than 2 characters, emit normal state with suggestions',
    setUp: () => when(mockFetchSuggestions(any)).thenAnswer((_) async => Right(tSuggestions)),
    build: () => GooglePlacesCubit(
      fetchSuggestions: mockFetchSuggestions,
      fetchPlaceDetails: mockFetchPlaceDetails,
    ),
    act: (cubit) async {
      cubit.fetchSuggestions('Paris');
      //Wait for debouncer to finish
      await Future.delayed(Duration(milliseconds: 600));
    },
    expect: () => [
      GooglePlacesState.normal(suggestions: tSuggestions),
    ],
    verify: (_) {
      verify(mockFetchSuggestions(any)).called(1);
      verifyZeroInteractions(mockFetchPlaceDetails);
    },
  );

  blocTest<GooglePlacesCubit, GooglePlacesState>(
    'On fetchSuggestions if query is more than 2 characters, emit normal state with loading and then with suggestions',
    setUp: () => when(mockFetchSuggestions(any)).thenAnswer((_) async {
      //Wait for debouncer to finish
      await Future.delayed(Duration(milliseconds: 600));
      return Right(tSuggestions);
    }),
    build: () => GooglePlacesCubit(
      fetchSuggestions: mockFetchSuggestions,
      fetchPlaceDetails: mockFetchPlaceDetails,
    ),
    act: (cubit) async {
      cubit.fetchSuggestions('Paris');
      //Wait for debouncer to finish
      await Future.delayed(Duration(milliseconds: 1200));
    },
    expect: () => [
      GooglePlacesState.normal(isLoading: true),
      GooglePlacesState.normal(suggestions: tSuggestions),
    ],
    verify: (_) {
      verify(mockFetchSuggestions(any)).called(1);
      verifyZeroInteractions(mockFetchPlaceDetails);
    },
  );

  blocTest<GooglePlacesCubit, GooglePlacesState>(
    'On fetchSuggestions if query is more than 2 characters, emit error state when failure occurs',
    setUp: () => when(mockFetchSuggestions(any))
        .thenAnswer((_) async => Left(GooglePlacesFailure.unknownError(message: 'Unknown error'))),
    build: () => GooglePlacesCubit(
      fetchSuggestions: mockFetchSuggestions,
      fetchPlaceDetails: mockFetchPlaceDetails,
    ),
    act: (cubit) async {
      cubit.fetchSuggestions('Paris');
      //Wait for debouncer to finish
      await Future.delayed(Duration(milliseconds: 600));
    },
    expect: () => [
      GooglePlacesState.error(message: 'Unknown error', showRetryButton: true),
    ],
    verify: (_) {
      verify(mockFetchSuggestions(any)).called(1);
      verifyZeroInteractions(mockFetchPlaceDetails);
    },
  );

  blocTest<GooglePlacesCubit, GooglePlacesState>(
    'On fetchPlaceDetails emit normal state with loading and then with place details',
    setUp: () => when(mockFetchPlaceDetails(any)).thenAnswer((_) async {
      //Wait for debouncer to finish
      await Future.delayed(Duration(milliseconds: 600));
      return Right(tPlaceDetails);
    }),
    build: () => GooglePlacesCubit(
      fetchSuggestions: mockFetchSuggestions,
      fetchPlaceDetails: mockFetchPlaceDetails,
    ),
    act: (cubit) async => cubit.fetchPlaceDetails('ChIJD7fiBh9u5kcRYJSMaMOCCwQ'),
    expect: () => [
      GooglePlacesState.normal(isLoading: true),
      GooglePlacesState.normal(placeDetails: tPlaceDetails),
    ],
    verify: (_) {
      verify(mockFetchPlaceDetails(any)).called(1);
      verifyZeroInteractions(mockFetchSuggestions);
    },
  );

  blocTest<GooglePlacesCubit, GooglePlacesState>(
    'On fetchPlaceDetails emit error state when failure occurs',
    setUp: () => when(mockFetchPlaceDetails(any))
        .thenAnswer((_) async => Left(GooglePlacesFailure.unknownError(message: 'Unknown error'))),
    build: () => GooglePlacesCubit(
      fetchSuggestions: mockFetchSuggestions,
      fetchPlaceDetails: mockFetchPlaceDetails,
    ),
    act: (cubit) async => cubit.fetchPlaceDetails('ChIJD7fiBh9u5kcRYJSMaMOCCwQ'),
    expect: () => [
      GooglePlacesState.error(message: 'Unknown error', showRetryButton: false)
    ],
    verify: (_) {
      verify(mockFetchPlaceDetails(any)).called(1);
      verifyZeroInteractions(mockFetchSuggestions);
    },
  );
}
