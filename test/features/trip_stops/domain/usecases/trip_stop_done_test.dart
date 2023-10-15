import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/trip_stop_done.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late TripStopDone usecase;
  late MockTripStopsRepository mockTripStopsRepository;

  setUp(() {
    mockTripStopsRepository = MockTripStopsRepository();
    usecase = TripStopDone(mockTripStopsRepository);
  });

  test('should return right(null) when tripStopDone', () async {
    when(mockTripStopsRepository.updateTripStopDone(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      isDone: anyNamed('isDone'),
    )).thenAnswer((_) async => right(null));

    // act
    final result = await usecase(const TripStopDoneParams(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      tripStopId: 'tripStopId',
      isDone: true,
    ));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(TripStopsFailure()) when tripStopDone throws', () async {
    when(mockTripStopsRepository.updateTripStopDone(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      isDone: anyNamed('isDone'),
    )).thenAnswer((_) async => left(const TripStopsFailure()));

    // act
    final result = await usecase(const TripStopDoneParams(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      tripStopId: 'tripStopId',
      isDone: true,
    ));
    // assert
    expect(result, equals(left(const TripStopsFailure())));
  });
}
