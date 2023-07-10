import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trips.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../repositories/mock_day_trips_repository.mocks.dart';

void main() {
  late ListenDayTrips useCase;
  late MockDayTripsRepository mockDayTripsRepository;

  setUp(() {
    mockDayTripsRepository = MockDayTripsRepository();
    useCase = ListenDayTrips(mockDayTripsRepository);
  });

  final tTripId = 'Test Trip Id';
  final tParams = ListenDayTripsParams(
    tripId: tTripId,
  );

  test('should listen to day trips', () async {
    // arrange
    final tDayTip = DayTrip(
      id: 'Test Day Trip Id',
      name: 'Test Day Trip',
      description: 'Test Day Trip Description',
    );
    final tDayTrips = [tDayTip];
    when(mockDayTripsRepository.listenDayTrips(
      any,
    )).thenAnswer((_) => Stream.value(right(tDayTrips)));

    // act
    final result = useCase(tParams);
    // assert
    expect(result, emitsInOrder([right(tDayTrips)]));
  });

  test('should return failure when listening to day trips fails', () async {
    // arrange
    when(mockDayTripsRepository.listenDayTrips(
      any,
    )).thenAnswer((_) => Stream.value(left(DayTripsFailure())));

    // act
    final result = useCase(tParams);
    // assert
    expect(result, emitsInOrder([left(DayTripsFailure())]));
  });
}
