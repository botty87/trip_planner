import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/user_account/domain/usecases/update_user_details.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import '../repositories/mock_user_repository.mocks.dart';

void main() {
  late UpdateUserDetails usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = UpdateUserDetails(mockUserRepository);
  });

  const params = UpdateUserDetailsParams(
    name: 'John Doe',
    email: 'johndoe@example.com',
    password: 'password123',
  );

  test('should update user details', () async {
    when(mockUserRepository.updateUserDetails(
      name: anyNamed('name'),
      email: anyNamed('email'),
      password: anyNamed('password'),
    )).thenAnswer((_) async => right(null));

    final result = await usecase(params);

    expect(result, equals(right(null)));
    verify(mockUserRepository.updateUserDetails(
      name: params.name,
      email: params.email,
      password: params.password,
    ));
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return UserFailures when updating user details fails', () async {
    when(mockUserRepository.updateUserDetails(
      name: anyNamed('name'),
      email: anyNamed('email'),
      password: anyNamed('password'),
    )).thenAnswer((_) async => left(const UserFailures.unknownError()));

    final result = await usecase(params);

    expect(result, equals(left(const UserFailures.unknownError())));
    verify(mockUserRepository.updateUserDetails(
      name: params.name,
      email: params.email,
      password: params.password,
    ));
    verifyNoMoreInteractions(mockUserRepository);
  });
}
