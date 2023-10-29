import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stop_note.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/mock_trip_stops_repository.mocks.dart';

void main() {
  late UpdateTripStopNote usecase;
  late MockTripStopsRepository mockTripStopsRepository;

  setUp(() {
    mockTripStopsRepository = MockTripStopsRepository();
    usecase = UpdateTripStopNote(mockTripStopsRepository);
  });

  test('should return right(null) when updateTripStopNote', () async {
    when(mockTripStopsRepository.updateTripStopNote(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      note: anyNamed('note'),
    )).thenAnswer((_) async => right(null));

    // act
    final result = await usecase(const UpdateTripStopNoteParams(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      tripStopId: 'tripStopId',
      note: 'note',
    ));
    // assert
    expect(result, equals(right(null)));
  });

  test('should return left(TripStopsFailure()) when updateTripStopNote throws', () async {
    when(mockTripStopsRepository.updateTripStopNote(
      tripId: anyNamed('tripId'),
      dayTripId: anyNamed('dayTripId'),
      tripStopId: anyNamed('tripStopId'),
      note: anyNamed('note'),
    )).thenAnswer((_) async => left(const TripStopsFailure()));

    // act
    final result = await usecase(const UpdateTripStopNoteParams(
      tripId: 'tripId',
      dayTripId: 'dayTripId',
      tripStopId: 'tripStopId',
      note: 'note',
    ));
    // assert
    expect(result, equals(left(const TripStopsFailure())));
  });
}
