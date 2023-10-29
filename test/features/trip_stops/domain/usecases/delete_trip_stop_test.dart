import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/delete_trip_stop.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late DeleteTripStop usecase;
  late MockTripStopsRepository mockTripStopsRepository;

  setUp(() {
    mockTripStopsRepository = MockTripStopsRepository();
    usecase = DeleteTripStop(mockTripStopsRepository);
  });

  test('should return right(null) when deleteTripStop', () async {
    when(mockTripStopsRepository.deleteTripStop(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
    )).thenAnswer((_) async => right(null));

    // act
    final result = await usecase(const DeleteTripStopParams(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      tripStopId: 'tripStopId',
    ));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(TripStopsFailure()) when deleteTripStop throws', () async {
    when(mockTripStopsRepository.deleteTripStop(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
    )).thenAnswer((_) async => left(const TripStopsFailure()));

    // act
    final result = await usecase(const DeleteTripStopParams(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      tripStopId: 'tripStopId',
    ));
    // assert
    expect(result, equals(left(const TripStopsFailure())));
  });
}
