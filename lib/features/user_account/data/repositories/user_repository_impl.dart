import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';

import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../../errors/user_failures.dart';
import '../datasources/user_data_source.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Stream<Either<UserFailures, User?>> listenUser() async* {
    try {
      yield* userDataSource.listenUser().map((user) => right(user));
    } catch (e) {
      yield left(UserFailures());
    }
  }

  @override
  Future<Either<UserFailures, void>> saveUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailures, void>> registerUser(
      {required String email, required String password, required String name}) async {
    try {
      await userDataSource.registerUser(email: email, password: password, name: name);
      return right(null);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return left(UserFailures(code: UserFailuresCode.emailAlreadyInUse));
        case 'weak-password':
          return left(UserFailures(code: UserFailuresCode.weakPassword));
        case 'network-request-failed':
          return left(UserFailures(code: UserFailuresCode.networkRequestFailed));
        default:
          return left(UserFailures());
      }
    } catch (e) {
      return left(UserFailures());
    }
  }

  @override
  Future<Either<UserFailures, void>> loginUser(
      {required String email, required String password}) async {
    try {
      await userDataSource.loginUser(email: email, password: password);
      return right(null);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return left(UserFailures(code: UserFailuresCode.userNotFound));
        case 'wrong-password':
          return left(UserFailures(code: UserFailuresCode.wrongPassword));
        case 'network-request-failed':
          return left(UserFailures(code: UserFailuresCode.networkRequestFailed));
        default:
          return left(UserFailures());
      }
    } catch (e) {
      return left(UserFailures());
    }
  }

  @override
  Future<Either<UserFailures, void>> recoverPassword(String email) async {
    try {
      await userDataSource.recoverPassword(email);
      return right(null);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return left(UserFailures(code: UserFailuresCode.userNotFound));
        case 'network-request-failed':
          return left(UserFailures(code: UserFailuresCode.networkRequestFailed));
        default:
          return left(UserFailures());
      }
    } catch (e) {
      return left(UserFailures());
    }
  }

  @override
  Future<Either<UserFailures, void>> logoutUser() async {
    try {
      await userDataSource.logoutUser();
      return right(null);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'network-request-failed':
          return left(UserFailures(code: UserFailuresCode.networkRequestFailed));
        default:
          return left(UserFailures());
      }
    } catch (e) {
      return left(UserFailures());
    }
  }
}
