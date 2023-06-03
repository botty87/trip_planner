import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart';

import '../../errors/user_failure.dart';
import '../datasources/user_data_source.dart';

@Injectable(as: UserRepository)
final class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Stream<Either<UserFailure, User>> listenUser() async* {
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
}