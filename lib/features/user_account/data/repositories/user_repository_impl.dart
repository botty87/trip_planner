import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart';

import '../../errors/user_failure.dart';
import '../datasources/user_data_source.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Stream<Either<UserFailure, User?>> listenUser() async* {
    try {
      yield* userDataSource.listenUser().map((user) => right(user));
    } catch (e) {
      yield left(UserFailure());
    }
  }

  @override
  Future<Either<UserFailure, void>> saveUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailure, void>> registerUser(
      {required String email, required String password, required String name}) async {
    try {
      await userDataSource.registerUser(email: email, password: password, name: name);
      return right(null);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return left(UserFailure(code: UserFailureCode.emailAlreadyInUse));
        case 'weak-password':
          return left(UserFailure(code: UserFailureCode.weakPassword));
        case 'network-request-failed':
          return left(UserFailure(code: UserFailureCode.networkRequestFailed));
        default:
          return left(UserFailure());
      }
    } catch (e) {
      return left(UserFailure(code: UserFailureCode.networkRequestFailed));
    }
  }
  
  @override
  Future<Either<UserFailure, void>> loginUser() {
    // TODO: implement loginUser
    throw UnimplementedError();
  }
}
