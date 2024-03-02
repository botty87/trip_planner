import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';
import 'package:trip_planner/features/user_account/domain/usecases/delete_user.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import '../../../trips/domain/repositories/mock_trips_repository.mocks.dart';
import '../repositories/mock_user_repository.mocks.dart';
import 'delete_user_test.mocks.dart';

@GenerateNiceMocks([MockSpec<InternetConnection>()])
void main() {
  late DeleteUser usecase;
  late MockUserRepository mockUserRepository;
  late MockTripsRepository mockTripsRepository;
  late MockInternetConnection mockInternetConnection;

  setUp(() {
    mockUserRepository = MockUserRepository();
    mockTripsRepository = MockTripsRepository();
    mockInternetConnection = MockInternetConnection();
    usecase = DeleteUser(mockUserRepository, mockTripsRepository, mockInternetConnection);
  });

  const tUserId = 'userId';

  test(
    'should check if there is internet connection',
    () async {
      // arrange
      when(mockInternetConnection.hasInternetAccess).thenAnswer((_) async => true);
      when(mockTripsRepository.deleteAllTrips(any)).thenAnswer((_) async => const Right(null));
      when(mockUserRepository.deleteUser()).thenAnswer((_) async => const Right(null));
      // act
      await usecase(const DeleteUserParams(userId: tUserId));
      // assert
      verify(mockInternetConnection.hasInternetAccess);
    },
  );

  test(
    'should return a network failure when there is no internet connection',
    () async {
      // arrange
      when(mockInternetConnection.hasInternetAccess).thenAnswer((_) async => false);
      // act
      final result = await usecase(const DeleteUserParams(userId: tUserId));
      // assert
      expect(result, equals(left(const UserFailures.networkRequestFailed())));
    },
  );

  test(
    'should delete all trips from the user',
    () async {
      // arrange
      when(mockInternetConnection.hasInternetAccess).thenAnswer((_) async => true);
      when(mockTripsRepository.deleteAllTrips(any)).thenAnswer((_) async => const Right(null));
      when(mockUserRepository.deleteUser()).thenAnswer((_) async => const Right(null));
      // act
      await usecase(const DeleteUserParams(userId: tUserId));
      // assert
      verify(mockTripsRepository.deleteAllTrips(tUserId));
    },
  );

  test(
    'should return a UserFailures when deleting all trips fails',
    () async {
      // arrange
      when(mockInternetConnection.hasInternetAccess).thenAnswer((_) async => true);
      when(mockTripsRepository.deleteAllTrips(any))
          .thenAnswer((_) async => left(const TripsFailure()));
      // act
      final result = await usecase(const DeleteUserParams(userId: tUserId));
      // assert
      expect(result, equals(left(const UserFailures.unknownError())));
    },
  );

  test(
    'should return a UserFailures when deleting user fails',
    () async {
      // arrange
      when(mockInternetConnection.hasInternetAccess).thenAnswer((_) async => true);
      when(mockTripsRepository.deleteAllTrips(any)).thenAnswer((_) async => right(null));
      when(mockUserRepository.deleteUser())
          .thenAnswer((_) async => left(const UserFailures.unknownError()));
      // act
      final result = await usecase(const DeleteUserParams(userId: tUserId));
      // assert
      expect(result, equals(left(const UserFailures.unknownError())));
    },
  );
}
