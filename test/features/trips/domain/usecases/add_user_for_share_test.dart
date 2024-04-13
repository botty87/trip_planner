import 'package:trip_planner/features/trips/domain/usecases/add_user_for_share.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../repositories/mock_trips_repository.mocks.dart';

void main() {
  late AddUserForShare useCase;
  late MockTripsRepository mockRepository;

  setUp(() {
    mockRepository = MockTripsRepository();
    useCase = AddUserForShare(mockRepository);
  });

  test('should add user for share', () async {
    // Arrange
    const tripId = 'tripId';
    const email = 'test@example.com';
    const params = AddUserForShareParams(tripId: tripId, email: email);

    when(mockRepository.addUserForShare(tripId, email)).thenAnswer((_) async => right(null));

    // Act
    final result = await useCase(params);

    // Assert
    expect(result, right(null));
    verify(mockRepository.addUserForShare(tripId, email)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });
}
