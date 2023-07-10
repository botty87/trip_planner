import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart';
import 'package:trip_planner/features/day_trips/data/repositories/day_trips_repository_impl.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import 'day_trips_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DayTripsDataSource>()])
void main() {
  late MockDayTripsDataSource mockDayTripsDataSource;
  late DayTripsRepositoryImpl repository;

  setUp(() {
    mockDayTripsDataSource = MockDayTripsDataSource();
    repository = DayTripsRepositoryImpl(mockDayTripsDataSource);
  });

  group('createDayTrip', () {
    test('should return right(null) when createDayTrip', () async {
      when(mockDayTripsDataSource.createDayTrip(name: 'name', tripId: 'tripId'))
          .thenAnswer((_) async => null);

      // act
      final result = await repository.createDayTrip(name: 'name', tripId: 'tripId');
      // assert
      expect(result, equals(right(null)));
    });

    test('should return left(DayTripsFailure()) when createDayTrip throws', () async {
      when(mockDayTripsDataSource.createDayTrip(name: 'name', tripId: 'tripId'))
          .thenThrow(Exception());

      // act
      final result = await repository.createDayTrip(name: 'name', tripId: 'tripId');
      // assert
      expect(result, equals(left(DayTripsFailure(message: 'Exception'))));
    });
  });

  group('listenDayTrips', () { 
    test('should return right(List<DayTrip>) when listenDayTrips', () async {
      final tDayTrip = DayTrip(
        id: 'id',
        name: 'name',
        description: 'description',
      );
      final tDayTrips = [tDayTrip];
      when(mockDayTripsDataSource.listenDayTrips(any)).thenAnswer((_) => Stream.value(tDayTrips));

      // act
      final result = repository.listenDayTrips('tripId');
      // assert
      expect(result, emitsInOrder([right(tDayTrips)]));
    });

    test('should return left(DayTripsFailure()) when listenDayTrips throws', () async {
      when(mockDayTripsDataSource.listenDayTrips(any)).thenThrow(Exception());

      // act
      final result = repository.listenDayTrips('tripId');
      // assert
      expect(result, emitsInOrder([left(DayTripsFailure())]));
    });
  });
}
