import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuthException;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/settings/domain/entities/settings.dart';
import 'package:trip_planner/features/tutorials/domain/entities/tutorials_data.dart';
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart';
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import 'user_repository_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UserDataSource>(),
  MockSpec<FirebaseCrashlytics>(),
])
void main() {
  late MockUserDataSource mockUserDataSource;
  late MockFirebaseCrashlytics mockCrashlytics;
  late UserRepositoryImpl userRepositoryImpl;

  //User for the test
  const User tUser = User(
    id: '123',
    email: '',
    name: '',
    tutorialsData: TutorialsData(),
  );

  //Settings for the test
  const Settings tSettings = Settings();

  setUp(() {
    mockUserDataSource = MockUserDataSource();
    mockCrashlytics = MockFirebaseCrashlytics();
    userRepositoryImpl = UserRepositoryImpl(mockUserDataSource, mockCrashlytics);
  });

  test('should listen user from the data source', () async {
    // arrange
    when(mockUserDataSource.user).thenAnswer((_) => Stream.value(tUser));

    // act
    final result = userRepositoryImpl.listenUser();

    // assert
    await expectLater(result, emits(right(tUser)));
    verify(mockUserDataSource.user);
    verifyNoMoreInteractions(mockUserDataSource);
  });

  group('listen user', () {
    test('should return a failure when there is an exception on data source', () async {
      // arrange
      when(mockUserDataSource.user).thenAnswer((realInvocation) => throw Exception());

      // act
      final result = userRepositoryImpl.listenUser();

      // assert
      await expectLater(result, emits(left(const UserFailures.unknownError())));
      verify(mockUserDataSource.user);
      verifyNoMoreInteractions(mockUserDataSource);
    });
  });

  group('register user', () {
    test('should register user on data source', () async {
      // arrange
      when(mockUserDataSource.registerUser(email: '', password: '', name: ''))
          .thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.registerUser(email: '', password: '', name: '');

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.registerUser(email: '', password: '', name: ''));
      verifyNoMoreInteractions(mockUserDataSource);
    });
  });

  group('login user', () {
    test('should login user on data source', () async {
      // arrange
      when(mockUserDataSource.loginUser(email: '', password: '')).thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.loginUser(email: '', password: '');

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.loginUser(email: '', password: ''));
      verifyNoMoreInteractions(mockUserDataSource);
    });

    test('should return a failure when there is an exception on data source', () async {
      // arrange
      when(mockUserDataSource.loginUser(email: '', password: ''))
          .thenAnswer((realInvocation) => throw Exception());

      // act
      final result = await userRepositoryImpl.loginUser(email: '', password: '');

      // assert
      expect(result, left(const UserFailures.unknownError()));
      verify(mockUserDataSource.loginUser(email: '', password: ''));
      verifyNoMoreInteractions(mockUserDataSource);

      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('recover password', () {
    test('should recover password on data source', () async {
      // arrange
      when(mockUserDataSource.recoverPassword('')).thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.recoverPassword('');

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.recoverPassword(''));
      verifyNoMoreInteractions(mockUserDataSource);
    });

    test('should return a failure when there is an exception on data source', () async {
      // arrange
      when(mockUserDataSource.recoverPassword(''))
          .thenAnswer((realInvocation) => throw Exception());

      // act
      final result = await userRepositoryImpl.recoverPassword('');

      // assert
      expect(result, left(const UserFailures.unknownError()));
      verify(mockUserDataSource.recoverPassword(''));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockCrashlytics);
      verifyNoMoreInteractions(mockUserDataSource);
    });
  });

  group('logout user', () {
    test('should logout user on data source', () async {
      // arrange
      when(mockUserDataSource.logoutUser()).thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.logoutUser();

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.logoutUser());
      verifyNoMoreInteractions(mockUserDataSource);
    });

    test('should return a failure when there is an exception on data source', () async {
      // arrange
      when(mockUserDataSource.logoutUser()).thenAnswer((realInvocation) => throw Exception());

      // act
      final result = await userRepositoryImpl.logoutUser();

      // assert
      expect(result, left(const UserFailures.unknownError()));
      verify(mockUserDataSource.logoutUser());
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('reauthenticate user', () {
    test('should reauthenticate user on data source', () async {
      // arrange
      when(mockUserDataSource.reauthenticateUser(email: '', password: ''))
          .thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.reauthenticateUser(email: '', password: '');

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.reauthenticateUser(email: '', password: ''));
      verifyNoMoreInteractions(mockUserDataSource);
    });

    test('should return a failure when user is not found', () async {
      // arrange
      when(mockUserDataSource.reauthenticateUser(email: '', password: ''))
          .thenThrow(FirebaseAuthException(code: 'user-not-found'));

      // act
      final result = await userRepositoryImpl.reauthenticateUser(email: '', password: '');

      // assert
      expect(result, left(const UserFailures.userNotFound()));
      verify(mockUserDataSource.reauthenticateUser(email: '', password: ''));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });

    test('should return a failure when password is wrong', () async {
      // arrange
      when(mockUserDataSource.reauthenticateUser(email: '', password: ''))
          .thenThrow(FirebaseAuthException(code: 'wrong-password'));

      // act
      final result = await userRepositoryImpl.reauthenticateUser(email: '', password: '');

      // assert
      expect(result, left(const UserFailures.wrongPassword()));
      verify(mockUserDataSource.reauthenticateUser(email: '', password: ''));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });

    test('should return a failure when network request fails', () async {
      // arrange
      when(mockUserDataSource.reauthenticateUser(email: '', password: ''))
          .thenThrow(FirebaseAuthException(code: 'network-request-failed'));

      // act
      final result = await userRepositoryImpl.reauthenticateUser(email: '', password: '');

      // assert
      expect(result, left(const UserFailures.networkRequestFailed()));
      verify(mockUserDataSource.reauthenticateUser(email: '', password: ''));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });

    test('should return a generic failure when an unknown exception is thrown', () async {
      // arrange
      when(mockUserDataSource.reauthenticateUser(email: '', password: '')).thenThrow(Exception());

      // act
      final result = await userRepositoryImpl.reauthenticateUser(email: '', password: '');

      // assert
      expect(result, left(const UserFailures.unknownError()));
      verify(mockUserDataSource.reauthenticateUser(email: '', password: ''));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('update user details', () {
    test('should update user details on data source', () async {
      // arrange
      when(mockUserDataSource.updateUserDetails(name: '', email: '', password: ''))
          .thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.updateUserDetails(name: '', email: '', password: '');

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.updateUserDetails(name: '', email: '', password: ''));
      verifyNoMoreInteractions(mockUserDataSource);
    });

    test('should return a failure when there is an exception on data source', () async {
      // arrange
      when(mockUserDataSource.updateUserDetails(name: '', email: '', password: ''))
          .thenAnswer((realInvocation) => throw Exception());

      // act
      final result = await userRepositoryImpl.updateUserDetails(name: '', email: '', password: '');

      // assert
      expect(result, left(const UserFailures.unknownError()));
      verify(mockUserDataSource.updateUserDetails(name: '', email: '', password: ''));
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('delete user', () {
    test('should delete user on data source', () async {
      // arrange
      when(mockUserDataSource.deleteUser()).thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.deleteUser();

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.deleteUser());
      verifyNoMoreInteractions(mockUserDataSource);
    });

    test('should return a failure when there is an exception on data source', () async {
      // arrange
      when(mockUserDataSource.deleteUser()).thenAnswer((realInvocation) => throw Exception());

      // act
      final result = await userRepositoryImpl.deleteUser();

      // assert
      expect(result, left(const UserFailures.unknownError()));
      verify(mockUserDataSource.deleteUser());
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('saveSettings', () {
    test('should save settings on data source', () async {
      // arrange
      when(mockUserDataSource.saveSettings(tSettings)).thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.saveSettings(tSettings);

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.saveSettings(tSettings)).called(1);
      verifyNoMoreInteractions(mockUserDataSource);
    });

    test('should return a failure when there is an exception on data source', () async {
      // arrange
      when(mockUserDataSource.saveSettings(tSettings))
          .thenAnswer((realInvocation) => throw Exception());

      // act
      final result = await userRepositoryImpl.saveSettings(tSettings);

      // assert
      expect(result, left(const UserFailures.unknownError()));
      verify(mockUserDataSource.saveSettings(tSettings)).called(1);
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });

  group('saveTutorialsData', () {
    test('should save tutorials data on data source', () async {
      // arrange
      when(mockUserDataSource.saveTutorialsData(const TutorialsData()))
          .thenAnswer((_) async => null);

      // act
      final result = await userRepositoryImpl.saveTutorialsData(const TutorialsData());

      // assert
      expect(result, right(null));
      verify(mockUserDataSource.saveTutorialsData(const TutorialsData())).called(1);
      verifyNoMoreInteractions(mockUserDataSource);
    });

    test('should return a failure when there is an exception on data source', () async {
      // arrange
      when(mockUserDataSource.saveTutorialsData(const TutorialsData()))
          .thenAnswer((realInvocation) => throw Exception());

      // act
      final result = await userRepositoryImpl.saveTutorialsData(const TutorialsData());

      // assert
      expect(result, left(const UserFailures.unknownError()));
      verify(mockUserDataSource.saveTutorialsData(const TutorialsData())).called(1);
      verify(mockCrashlytics.recordError(any, any));
      verifyNoMoreInteractions(mockUserDataSource);
      verifyNoMoreInteractions(mockCrashlytics);
    });
  });
}

