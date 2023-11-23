import 'package:dartz/dartz.dart';

import '../../errors/user_failures.dart';
import '../entities/user.dart';

abstract interface class UserRepository {
  Stream<Either<UserFailures, User?>> listenUser();

  Future<Either<UserFailures, void>> registerUser(
      {required String email, required String password, required String name});

  Future<Either<UserFailures, void>> loginUser({required String email, required String password});

  Future<Either<UserFailures, void>> recoverPassword(String email);

  Future<Either<UserFailures, void>> logoutUser();

  Future<Either<UserFailures, void>> reauthenticateUser({required String email, required String password});

  Future<Either<UserFailures, void>> updateUserDetails({required String? name, required String? email, required String? password});

  Future<Either<UserFailures, void>> deleteUser();
}
