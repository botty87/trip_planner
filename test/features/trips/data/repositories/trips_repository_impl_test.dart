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

  setUp(() {
    mockTripsDataSource = MockTripsDataSource();
    tripsRepositoryImpl = TripsRepositoryImpl(
      tripsDataSource: mockTripsDataSource,
    );
  });

  group('addTrip', () {
    final trip = Trip(
      userId: 'userId',
      name: 'name',
      createdAt: DateTime.now(),
    );

    test('should return right(null) when TripsDataSource.addTrip completes', () async {
      when(mockTripsDataSource.addTrip(trip)).thenAnswer((_) async => null);

      // act
      final result = await tripsRepositoryImpl.addTrip(trip);
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(TripsFailure()) when TripsDataSource.addTrip throws', () async {
      when(mockTripsDataSource.addTrip(trip)).thenThrow(Exception());

      // act
      final result = await tripsRepositoryImpl.addTrip(trip);
      // assert
      expect(result, equals(left(TripsFailure())));
    });
  });

  group('listen trips', () { 
    final userId = 'userId';
    final trips = [
      Trip(
        userId: 'userId',
        name: 'name',
        createdAt: DateTime.now(),
      ),
    ];

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
      await expectLater(result, emits(left(TripsFailure())));
      verify(mockTripsDataSource.listenTrips(userId));
      verifyNoMoreInteractions(mockTripsDataSource);
    });
  });
}
