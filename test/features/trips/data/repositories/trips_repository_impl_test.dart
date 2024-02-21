import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart';
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart';
import 'package:trip_planner/features/trips/domain/entities/trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import 'trips_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TripsDataSource>()])
void main() {
  late MockTripsDataSource mockTripsDataSource;
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
    tripsRepositoryImpl = TripsRepositoryImpl(
      tripsDataSource: mockTripsDataSource,
    );
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
    });
  });

  group('listen trips', () {
    const userId = 'userId';
    final trips = [tTrip];

    test('should return right(trips) when TripsDataSource.listenTrips completes', () async {
      when(mockTripsDataSource.listenTrips(userId)).thenAnswer((_) => Stream.value(trips));

      // act
      final result = tripsRepositoryImpl.listenTrips(userId);
      // assert
      await expectLater(result, emits(right(trips)));
      verify(mockTripsDataSource.listenTrips(userId));
      verifyNoMoreInteractions(mockTripsDataSource);
    });

    test('should return left(TripsFailure()) when TripsDataSource.listenTrips throws', () async {
      when(mockTripsDataSource.listenTrips(userId)).thenThrow(Exception());

      // act
      final result = tripsRepositoryImpl.listenTrips(userId);

      // assert
      await expectLater(result, emits(left(const TripsFailure())));
      verify(mockTripsDataSource.listenTrips(userId));
      verifyNoMoreInteractions(mockTripsDataSource);
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
    });
  });

  group('delete all trips', () {
    test('should return right(null) when TripsDataSource.deleteAllTrips completes', () async {
      const userId = 'userId';
      when(mockTripsDataSource.deleteAllTrips(userId)).thenAnswer((_) async {});

      // act
      final result = await tripsRepositoryImpl.deleteAllTrips(userId);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(TripsFailure()) when TripsDataSource.deleteAllTrips throws', () async {
      const userId = 'userId';
      when(mockTripsDataSource.deleteAllTrips(userId)).thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.deleteAllTrips(userId);
      // assert
      expect(result, equals(left(const TripsFailure())));
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

    test(
        'should return left(TripsFailure()) when TripsDataSource.createFromExistingTrip throws',
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
    });
  });
}
