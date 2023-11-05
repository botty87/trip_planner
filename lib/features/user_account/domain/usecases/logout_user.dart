import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/user_failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class LogoutUser implements UseCase<void, NoParams> {
  final UserRepository repository;

  LogoutUser(this.repository);

  @override
  Future<Either<UserFailures, void>> call(NoParams params) {
    return repository.logoutUser();
  }
}
