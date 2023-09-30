import 'package:dartz/dartz.dart';
import '../../errors/user_failure.dart';

import '../entities/user.dart';

abstract interface class UserRepository {
  Stream<Either<UserFailure, User?>> listenUser();
  Future<Either<UserFailure, void>> saveUser(User user);

  Future<Either<UserFailure, void>> registerUser(
      {required String email, required String password, required String name});

  Future<Either<UserFailure, void>> loginUser({required String email, required String password});

  Future<Either<UserFailure, void>> recoverPassword(String email);
}
