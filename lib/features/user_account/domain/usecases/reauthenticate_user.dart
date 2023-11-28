import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/user_failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class ReauthenticateUser implements UseCase<void, ReauthenticateUserParams> {
  final UserRepository repository;

  ReauthenticateUser(this.repository);

  @override
  Future<Either<UserFailures, void>> call(ReauthenticateUserParams params) {
    return repository.reauthenticateUser(email: params.email, password: params.password);
  }
}

class ReauthenticateUserParams {
  final String email;
  final String password;

  const ReauthenticateUserParams({required this.email, required this.password});
}
