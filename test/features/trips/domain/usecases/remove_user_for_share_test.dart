import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/domain/usecases/remove_user_for_share.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late RemoveUserForShare useCase;
  late MockTripsRepository mockRepository;

  setUp(() {
    mockRepository = MockTripsRepository();
    useCase = RemoveUserForShare(mockRepository);
  });

  test('should remove user for share', () async {
    // Arrange
    const tripId = 'tripId';
    const userId = 'userId';
    const params = RemoveUserForShareParams(tripId: tripId, userId: userId);

    when(mockRepository.removeUserForShare(tripId, userId)).thenAnswer((_) async => right(null));

    // Act
    final result = await useCase(params);

    // Assert
    expect(result, right(null));
    verify(mockRepository.removeUserForShare(tripId, userId)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return failure when removing user for share fails', () async {
    // Arrange
    const tripId = 'tripId';
    const userId = 'userId';
    const params = RemoveUserForShareParams(tripId: tripId, userId: userId);

    when(mockRepository.removeUserForShare(tripId, userId))
        .thenAnswer((_) async => left(const ShareTripFailure()));

    // Act
    final result = await useCase(params);

    // Assert
    expect(result, left(const ShareTripFailure()));
    verify(mockRepository.removeUserForShare(tripId, userId)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });
}
