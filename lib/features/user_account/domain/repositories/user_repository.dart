import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Stream<Either<Failure, User>> listenUser();
  Future<Either<Failure, void>> saveUser(User user);
}