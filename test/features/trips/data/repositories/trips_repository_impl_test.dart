import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart';
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/errors/trips_exception.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import 'trips_repository_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<TripsDataSource>(),
  MockSpec<FirebaseCrashlytics>(),
])
void main() {
  late MockTripsDataSource mockTripsDataSource;
  late MockFirebaseCrashlytics mockFirebaseCrashlytics;
  late TripsRepositoryImpl tripsRepositoryImpl;

  final tTrip = Trip(
    id: 'id',
    userId: 'userId',
    name: 'name',
    createdAt: DateTime.now(),
    startDate: DateTime.now(),
  );

  setUp(() {
    mockTripsDataSource = MockTripsDataSource();
    mockFirebaseCrashlytics = MockFirebaseCrashlytics();
    tripsRepositoryImpl = TripsRepositoryImpl(mockTripsDataSource, mockFirebaseCrashlytics);
  });

  group('addTrip', () {
    test('should return right(null) when TripsDataSource.addTrip completes', () async {
      when(mockTripsDataSource.addTrip(tTrip)).thenAnswer((_) async {});

      // act
      final result = await tripsRepositoryImpl.createTrip(tTrip);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(TripsFailure()) when TripsDataSource.addTrip throws', () async {
      when(mockTripsDataSource.addTrip(tTrip)).thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.createTrip(tTrip);
      // assert
      expect(result, equals(left(const TripsFailure())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });
  });

  group('listen trips', () {
    const userId = 'userId';
    final trips = [tTrip];

    test('should return right(trips) when TripsDataSource.listenTrips completes', () async {
      when(mockTripsDataSource.listenUserTrips(userId)).thenAnswer((_) => Stream.value(trips));

      // act
      final result = tripsRepositoryImpl.listenUserTrips(userId);
      // assert
      await expectLater(result, emits(right(trips)));
      verify(mockTripsDataSource.listenUserTrips(userId));
      verifyNoMoreInteractions(mockTripsDataSource);
    });

    test('should return left(TripsFailure()) when TripsDataSource.listenTrips throws', () async {
      when(mockTripsDataSource.listenUserTrips(userId)).thenThrow(Exception());

      // act
      final result = tripsRepositoryImpl.listenUserTrips(userId);

      // assert
      await expectLater(result, emits(left(const TripsFailure())));
      verify(mockTripsDataSource.listenUserTrips(userId));
      verifyNoMoreInteractions(mockTripsDataSource);
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });
  });

  group('update trip', () {
    const tTripId = 'tripId';
    const tTripName = 'tripName';
    const tTripDescription = 'tripDescription';
    final tStartDate = DateTime.now();
    const tIsPublic = true;
    const tLanguageCode = 'en';

    test('should return right(null) when TripsDataSource.updateTrip completes', () async {
      when(mockTripsDataSource.updateTrip(
              tTripId, tTripName, tTripDescription, tStartDate, tIsPublic, tLanguageCode))
          .thenAnswer((_) async {});

      // act
      final result = await tripsRepositoryImpl.updateTrip(
          tTripId, tTripName, tTripDescription, tStartDate, tIsPublic, tLanguageCode);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(TripsFailure()) when TripsDataSource.updateTrip throws', () async {
      when(mockTripsDataSource.updateTrip(
              tTripId, tTripName, tTripDescription, tStartDate, tIsPublic, tLanguageCode))
          .thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.updateTrip(
          tTripId, tTripName, tTripDescription, tStartDate, tIsPublic, tLanguageCode);
      // assert
      expect(result, equals(left(const TripsFailure())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });
  });

  group('delete trip', () {
    test('should return right(null) when TripsDataSource.deleteTrip completes', () async {
      when(mockTripsDataSource.deleteTrip(tTrip)).thenAnswer((_) async {});

      // act
      final result = await tripsRepositoryImpl.deleteTrip(tTrip);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(TripsFailure()) when TripsDataSource.deleteTrip throws', () async {
      when(mockTripsDataSource.deleteTrip(tTrip)).thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.deleteTrip(tTrip);
      // assert
      expect(result, equals(left(const TripsFailure())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });
  });

  group('delete all trips', () {
    test('should return right(null) when TripsDataSource.deleteAllTrips completes', () async {
      const userId = 'userId';
      when(mockTripsDataSource.deleteAllUserTrips(userId)).thenAnswer((_) async {});

      // act
      final result = await tripsRepositoryImpl.deleteAllTrips(userId);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(TripsFailure()) when TripsDataSource.deleteAllTrips throws', () async {
      const userId = 'userId';
      when(mockTripsDataSource.deleteAllUserTrips(userId)).thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.deleteAllTrips(userId);
      // assert
      expect(result, equals(left(const TripsFailure())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });
  });

  group('createFromExistingTrip', () {
    test('should return right(null) when TripsDataSource.createFromExistingTrip completes',
        () async {
      when(mockTripsDataSource.createFromExistingTrip(
        existingTrip: tTrip,
        newTrip: tTrip,
        useDifferentDirectionsColors: true,
        showDirections: true,
      )).thenAnswer((_) async {});

      // act
      final result = await tripsRepositoryImpl.createFromExistingTrip(
        existingTrip: tTrip,
        newTrip: tTrip,
        useDifferentDirectionsColors: true,
        showDirections: true,
      );
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(TripsFailure()) when TripsDataSource.createFromExistingTrip throws',
        () async {
      when(mockTripsDataSource.createFromExistingTrip(
        existingTrip: tTrip,
        newTrip: tTrip,
        useDifferentDirectionsColors: true,
        showDirections: true,
      )).thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.createFromExistingTrip(
        existingTrip: tTrip,
        newTrip: tTrip,
        useDifferentDirectionsColors: true,
        showDirections: true,
      );
      // assert
      expect(result, equals(left(const TripsFailure())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });
  });

  group('addUserForShare', () {
    const tripId = 'tripId';
    const email = 'test@example.com';

    test('should return right(null) when TripsDataSource.addUserForShare completes', () async {
      when(mockTripsDataSource.addUserForShare(tripId, email)).thenAnswer((_) async {});

      // act
      final result = await tripsRepositoryImpl.addUserForShare(tripId, email);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(ShareTripFailure) when TripsDataSource.addUserForShare throws',
        () async {
      when(mockTripsDataSource.addUserForShare(tripId, email)).thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.addUserForShare(tripId, email);
      // assert
      expect(result, equals(left(const ShareTripFailure())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });

    test(
        'should return left(ShareTripFailure.noInternetConnection()) when TripsDataSource.addUserForShare throws TripsException.noInternetConnection',
        () async {
      when(mockTripsDataSource.addUserForShare(tripId, email))
          .thenThrow(const ShareTripException.noInternetConnection());

      // act
      final result = await tripsRepositoryImpl.addUserForShare(tripId, email);
      // assert
      expect(result, equals(left(const ShareTripFailure.noInternetConnection())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });

    test(
        'should return left(ShareTripFailure.userNotFound()) when TripsDataSource.addUserForShare throws TripsException.userNotFound',
        () async {
      when(mockTripsDataSource.addUserForShare(tripId, email))
          .thenThrow(const ShareTripException.userNotFound());

      // act
      final result = await tripsRepositoryImpl.addUserForShare(tripId, email);
      // assert
      expect(result, equals(left(const ShareTripFailure.userNotFound())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });
  });

  group('listen trip', () {
    const tripId = 'tripId';

    test('should return right(trip) when TripsDataSource.listenTrip completes', () async {
      when(mockTripsDataSource.listenTrip(tripId)).thenAnswer((_) => Stream.value(tTrip));

      // act
      final result = tripsRepositoryImpl.listenTrip(tripId);

      // assert
      await expectLater(result, emits(right(tTrip)));
      verify(mockTripsDataSource.listenTrip(tripId));
      verifyNoMoreInteractions(mockTripsDataSource);
    });

    test('should return left(TripsFailure()) when TripsDataSource.listenTrip throws', () async {
      when(mockTripsDataSource.listenTrip(tripId)).thenThrow(Exception());

      // act
      final result = tripsRepositoryImpl.listenTrip(tripId);

      // assert
      await expectLater(result, emits(left(const TripsFailure())));
      verify(mockTripsDataSource.listenTrip(tripId));
      verifyNoMoreInteractions(mockTripsDataSource);
      
    });
  });

  group('removeUserForShare', () {
    const tripId = 'tripId';
    const userId = 'userId';

    test('should return right(null) when TripsDataSource.removeUserForShare completes', () async {
      when(mockTripsDataSource.removeUserForShare(tripId, userId)).thenAnswer((_) async {});

      // act
      final result = await tripsRepositoryImpl.removeUserForShare(tripId, userId);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(ShareTripFailure) when TripsDataSource.removeUserForShare throws',
        () async {
      when(mockTripsDataSource.removeUserForShare(tripId, userId)).thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.removeUserForShare(tripId, userId);
      // assert
      expect(result, equals(left(const ShareTripFailure())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });

    test(
        'should return left(ShareTripFailure.noInternetConnection()) when TripsDataSource.removeUserForShare throws TripsException.noInternetConnection',
        () async {
      when(mockTripsDataSource.removeUserForShare(tripId, userId))
          .thenThrow(const ShareTripException.noInternetConnection());

      // act
      final result = await tripsRepositoryImpl.removeUserForShare(tripId, userId);
      // assert
      expect(result, equals(left(const ShareTripFailure.noInternetConnection())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });

    test(
        'should return left(ShareTripFailure.userNotFound()) when TripsDataSource.removeUserForShare throws TripsException.userNotFound',
        () async {
      when(mockTripsDataSource.removeUserForShare(tripId, userId))
          .thenThrow(const ShareTripException.userNotFound());

      // act
      final result = await tripsRepositoryImpl.removeUserForShare(tripId, userId);
      // assert
      expect(result, equals(left(const ShareTripFailure.userNotFound())));
      verify(mockFirebaseCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockFirebaseCrashlytics);
    });
  });
}
