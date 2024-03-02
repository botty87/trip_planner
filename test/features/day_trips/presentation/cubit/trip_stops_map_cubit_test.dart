import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/entities/trip_stops_directions.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/save_trip_stops_directions.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_show_directions.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';
import 'package:trip_planner/features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart';
import 'package:trip_planner/features/google_places/domain/usecases/fetch_polyline_points.dart';
import 'package:trip_planner/features/google_places/errors/google_places_failure.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';

import 'trip_stops_map_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FetchTripStopsDirections>(),
  MockSpec<SaveTripStopsDirections>(),
  MockSpec<ListenDayTrip>(),
  MockSpec<FirebaseCrashlytics>(),
  MockSpec<UpdateTripStopsDirectionsUpToDate>(),
  MockSpec<UpdateDayTripShowDirections>(),
  MockSpec<UpdateDayTripUseDifferentDirectionsColors>(),
])
void main() {
  late MockFetchTripStopsDirections mockFetchTripStopsDirections;
  late MockSaveTripStopsDirections mockSaveTripStopsDirections;
  late MockListenDayTrip mockListenDayTrip;
  late MockFirebaseCrashlytics mockFirebaseCrashlytics;
  late MockUpdateTripStopsDirectionsUpToDate mockUpdateTripStopsDirectionsUpToDate;
  late MockUpdateDayTripShowDirections mockUpdateDayTripShowDirections;
  late MockUpdateDayTripUseDifferentDirectionsColors mockUpdateDayTripUseDifferentDirectionsColors;

  final tTrip = Trip(
    id: '1',
    name: 'name',
    description: 'description',
    createdAt: DateTime.now(),
    userId: '1',
    startDate: DateTime.now(),
  );

  const tDayTrip = DayTrip(
    id: '1',
    description: 'description',
    index: 0,
  );

  final tTripStops = [
    const TripStop(
      id: '1',
      name: 'name',
      description: 'description',
      index: 0,
      duration: 0,
      location: LatLng(0.0, 0.0),
    ),
    const TripStop(
      id: '2',
      name: 'name',
      description: 'description',
      index: 1,
      duration: 0,
      location: LatLng(0.0, 0.0),
    ),
  ];

  setUp(() {
    mockFetchTripStopsDirections = MockFetchTripStopsDirections();
    mockSaveTripStopsDirections = MockSaveTripStopsDirections();
    mockListenDayTrip = MockListenDayTrip();
    mockFirebaseCrashlytics = MockFirebaseCrashlytics();
    mockUpdateTripStopsDirectionsUpToDate = MockUpdateTripStopsDirectionsUpToDate();
    mockUpdateDayTripShowDirections = MockUpdateDayTripShowDirections();
    mockUpdateDayTripUseDifferentDirectionsColors = MockUpdateDayTripUseDifferentDirectionsColors();
  });

  setUpAll(() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  TripStopsMapCubit getTripStopsMapCubit() {
    return TripStopsMapCubit(
      fetchPolylinePoints: mockFetchTripStopsDirections,
      saveTripStopsDirections: mockSaveTripStopsDirections,
      listenDayTrip: mockListenDayTrip,
      crashlytics: mockFirebaseCrashlytics,
      updateTripStopsDirectionsUpToDate: mockUpdateTripStopsDirectionsUpToDate,
      updateDayTripShowDirections: mockUpdateDayTripShowDirections,
      updateDayTripUseDifferentDirectionsColors: mockUpdateDayTripUseDifferentDirectionsColors,
      trip: tTrip,
      dayTrip: tDayTrip,
    );
  }

  blocTest(
    'on init, should listen to day trip',
    build: () => getTripStopsMapCubit(),
    verify: (_) {
      verify(mockListenDayTrip(ListenDayTripParams(tripId: tTrip.id, dayTripId: tDayTrip.id)));
    },
  );

  blocTest(
    'on clearTripStopsDirectionsErrors, should emit hasTripStopsDirectionsErrors = false',
    seed: () =>
        const TripStopsMapState.normal(dayTrip: tDayTrip, hasTripStopsDirectionsErrors: true),
    build: () => getTripStopsMapCubit(),
    act: (cubit) => cubit.clearTripStopsDirectionsErrors(),
    expect: () => [
      const TripStopsMapState.normal(dayTrip: tDayTrip, hasTripStopsDirectionsErrors: false),
    ],
  );

  group('saveDirections', () {
    blocTest(
      'on success, should call saveTripStopsDirections and emit dayTrip with tripStopsDirectionsUpToDate = true',
      setUp: () =>
          when(mockSaveTripStopsDirections(any)).thenAnswer((_) async => const Right(null)),
      build: () => getTripStopsMapCubit(),
      act: (cubit) => cubit.saveDirections([]),
      verify: (_) {
        verify(mockSaveTripStopsDirections(SaveTripStopsDirectionsParams(
          tripId: tTrip.id,
          dayTripId: tDayTrip.id,
          tripStopsDirections: const [],
        )));
      },
      expect: () => [
        TripStopsMapState.normal(
          dayTrip: tDayTrip.copyWith(tripStopsDirectionsUpToDate: true),
          isLoading: false,
        ),
      ],
    );

    blocTest(
      'on failure, should emit errorMessage',
      setUp: () => when(mockSaveTripStopsDirections(any))
          .thenAnswer((_) async => const Left(DayTripsFailure(message: 'Server error'))),
      build: () => getTripStopsMapCubit(),
      act: (cubit) => cubit.saveDirections([]),
      expect: () => const [
        TripStopsMapState.normal(
          dayTrip: tDayTrip,
          isLoading: false,
          errorMessage: 'Server error',
        ),
        TripStopsMapState.normal(
          dayTrip: tDayTrip,
          isLoading: false,
          errorMessage: null,
        ),
      ],
    );
  });

  blocTest(
    'on selectTab, should emit isSelectedTab',
    build: () => getTripStopsMapCubit(),
    act: (cubit) => cubit.selectTab(true),
    expect: () => [const TripStopsMapState.normal(dayTrip: tDayTrip, isSelectedTab: true)],
  );
  blocTest(
    'on showDirectionsChanged, should emit showDirections and call updateDayTripShowDirections',
    build: () => getTripStopsMapCubit(),
    setUp: () =>
        when(mockUpdateDayTripShowDirections(any)).thenAnswer((_) async => const Right(null)),
    act: (cubit) => cubit.showDirectionsChanged(true),
    expect: () => [TripStopsMapState.normal(dayTrip: tDayTrip.copyWith(showDirections: true))],
    verify: (_) {
      verify(mockUpdateDayTripShowDirections(UpdateDayTripShowDirectionsParams(
        tripId: tTrip.id,
        dayTripId: tDayTrip.id,
        showDirections: true,
      )));
    },
  );

  blocTest(
    'on useDifferentColorsChanged, should emit useDifferentColors and call updateDayTripUseDifferentDirectionsColors',
    build: () => getTripStopsMapCubit(),
    setUp: () => when(mockUpdateDayTripUseDifferentDirectionsColors(any))
        .thenAnswer((_) async => const Right(null)),
    act: (cubit) => cubit.useDifferentColorsChanged(true),
    expect: () =>
        [TripStopsMapState.normal(dayTrip: tDayTrip.copyWith(useDifferentDirectionsColors: true))],
    verify: (_) {
      verify(mockUpdateDayTripUseDifferentDirectionsColors(
          UpdateDayTripUseDifferentDirectionsColorsParams(
        tripId: tTrip.id,
        dayTripId: tDayTrip.id,
        useDifferentDirectionsColors: true,
      )));
    },
  );

  group('loadDirections', () {
    blocTest(
      'on success, should emit tripStopsDirections',
      setUp: () {
        when(mockFetchTripStopsDirections(any))
            .thenAnswer((_) async => const Right(<TripStopsDirections>[]));
        when(mockSaveTripStopsDirections(any)).thenAnswer((_) async => const Right(null));
      },
      build: () => getTripStopsMapCubit(),
      act: (cubit) => cubit.loadDirections(tTripStops),
      verify: (_) => verify(mockFetchTripStopsDirections(
          FetchTripStopsDirectionsParams(tripStops: tTripStops, travelMode: TravelMode.driving))),
      expect: () => [
        const TripStopsMapState.normal(isLoading: true, dayTrip: tDayTrip),
        TripStopsMapState.normal(
          dayTrip: tDayTrip.copyWith(tripStopsDirections: []),
          isLoading: true,
        ),
        TripStopsMapState.normal(
          dayTrip: tDayTrip.copyWith(tripStopsDirectionsUpToDate: true, tripStopsDirections: []),
          isLoading: false,
        ),
      ],
    );

    blocTest(
      'on failure, should emit errorMessage',
      setUp: () {
        when(mockFetchTripStopsDirections(any)).thenAnswer(
            (_) async => const Left(GooglePlacesFailure.unknownError(message: 'error')));
      },
      build: () => getTripStopsMapCubit(),
      act: (cubit) => cubit.loadDirections(tTripStops),
      expect: () => const [
        TripStopsMapState.normal(isLoading: true, dayTrip: tDayTrip),
        TripStopsMapState.normal(
          dayTrip: tDayTrip,
          isLoading: false,
          errorMessage: 'unknownError error',
        ),
        TripStopsMapState.normal(
          dayTrip: tDayTrip,
          isLoading: false,
          errorMessage: null,
        ),
      ],
      verify: (_) {
        verify(mockFetchTripStopsDirections(FetchTripStopsDirectionsParams(
                tripStops: tTripStops, travelMode: TravelMode.driving)))
            .called(1);
        verifyNever(mockSaveTripStopsDirections(any));
      },
    );

    blocTest(
      'if tripStops length < 2, should not call fetchTripStopsDirections',
      build: () => getTripStopsMapCubit(),
      act: (cubit) => cubit.loadDirections([]),
      verify: (_) {
        verifyNever(mockFetchTripStopsDirections(any));
        verifyNever(mockSaveTripStopsDirections(any));
      },
      expect: () => [],
    );

    blocTest(
      'if isLoading, should not call fetchTripStopsDirections',
      build: () => getTripStopsMapCubit(),
      seed: () => const TripStopsMapState.normal(isLoading: true, dayTrip: tDayTrip),
      act: (cubit) => cubit.loadDirections(tTripStops),
      verify: (_) {
        verifyNever(mockFetchTripStopsDirections(any));
        verifyNever(mockSaveTripStopsDirections(any));
      },
      expect: () => [],
    );

    blocTest(
      'if tripStopsDirectionsUpToDate, should not call fetchTripStopsDirections',
      build: () => getTripStopsMapCubit(),
      seed: () => TripStopsMapState.normal(
        dayTrip: tDayTrip.copyWith(tripStopsDirectionsUpToDate: true),
      ),
      act: (cubit) => cubit.loadDirections(tTripStops),
      verify: (_) {
        verifyNever(mockFetchTripStopsDirections(any));
        verifyNever(mockSaveTripStopsDirections(any));
      },
      expect: () => [],
    );
  });

  blocTest(
    'On travelModeChanged, should emit travelMode and call updateTripStopsDirectionsUpToDate',
    build: () => getTripStopsMapCubit(),
    setUp: () =>
        when(mockUpdateTripStopsDirectionsUpToDate(any)).thenAnswer((_) async => const Right(null)),
    act: (cubit) => cubit.travelModeChanged(TravelMode.bicycling),
    expect: () =>
        [TripStopsMapState.normal(dayTrip: tDayTrip.copyWith(travelMode: TravelMode.bicycling))],
    verify: (_) {
      verify(mockUpdateTripStopsDirectionsUpToDate(UpdateTripStopsDirectionsUpToDateParams(
        tripId: tTrip.id,
        dayTripId: tDayTrip.id,
        travelMode: TravelMode.bicycling,
        isUpToDate: false,
      )));
    },
  );
}
