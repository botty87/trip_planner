import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';

import '../../../settings/domain/entities/settings.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../../errors/user_failures.dart';
import '../datasources/user_data_source.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  UserFailures onFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'email-already-in-use':
        return const UserFailures.emailAlreadyInUse();
      case 'weak-password':
        return const UserFailures.weakPassword();
      case 'network-request-failed':
        return const UserFailures.networkRequestFailed();
      case 'user-not-found':
        return const UserFailures.userNotFound();
      case 'wrong-password':
        return const UserFailures.wrongPassword();
      case 'too-many-requests':
        return const UserFailures.tooManyRequests();
      case 'user-disabled':
        return const UserFailures.userDisabled();
      case 'invalid-email':
        return const UserFailures.invalidEmail();
      default:
        return UserFailures.unknownError(message: e.message);
    }
  }

  @override
  Stream<Either<UserFailures, User?>> listenUser() async* {
    try {
      yield* userDataSource.user.map((user) => right(user));
    } catch (e) {
      yield left(const UserFailures.unknownError());
    }
  }

  @override
  Future<Either<UserFailures, void>> registerUser(
      {required String email, required String password, required String name}) async {
    try {
      await userDataSource.registerUser(email: email, password: password, name: name);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(onFirebaseAuthException(e));
    } catch (e) {
      return left(const UserFailures.unknownError());
    }
  }

  @override
  Future<Either<UserFailures, void>> loginUser(
      {required String email, required String password}) async {
    try {
      await userDataSource.loginUser(email: email, password: password);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(onFirebaseAuthException(e));
    } catch (e) {
      return left(const UserFailures.unknownError());
    }
  }

  @override
  Future<Either<UserFailures, void>> recoverPassword(String email) async {
    try {
      await userDataSource.recoverPassword(email);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(onFirebaseAuthException(e));
    } catch (e) {
      return left(const UserFailures.unknownError());
    }
  }

  @override
  Future<Either<UserFailures, void>> logoutUser() async {
    try {
      await userDataSource.logoutUser();
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(onFirebaseAuthException(e));
    } catch (e) {
      return left(const UserFailures.unknownError());
    }
  }

  @override
  Future<Either<UserFailures, void>> reauthenticateUser(
      {required String email, required String password}) async {
    try {
      await userDataSource.reauthenticateUser(email: email, password: password);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(onFirebaseAuthException(e));
    } catch (e) {
      return left(const UserFailures.unknownError());
    }
  }

  @override
  Future<Either<UserFailures, void>> updateUserDetails(
      {required String? name, required String? email, required String? password}) async {
    try {
      await userDataSource.updateUserDetails(name: name, email: email, password: password);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(onFirebaseAuthException(e));
    } catch (e) {
      return left(const UserFailures.unknownError());
    }
  }

  @override
  Future<Either<UserFailures, void>> deleteUser() async {
    try {
      await userDataSource.deleteUser();
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(onFirebaseAuthException(e));
    } catch (e) {
      return left(const UserFailures.unknownError());
    }
  }

  @override
  Future<Either<UserFailures, void>> saveSettings(Settings settings) async {
    try {
      await userDataSource.saveSettings(settings);
      return right(null);
    } catch (e) {
      return left(const UserFailures.unknownError());
    }
  }
}
