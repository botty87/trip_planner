import 'package:dartz/dartz.dart';
import 'package:trip_planner/features/user_account/errors/user_failure.dart';

import '../entities/user.dart';

abstract interface class UserRepository {
  Stream<Either<UserFailure, User?>> listenUser();
  Future<Either<UserFailure, void>> saveUser(User user);
}