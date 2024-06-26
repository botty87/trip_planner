import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/user_failures.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class ListenUser implements StreamUseCase<User?, NoParams> {
  final UserRepository repository;

  ListenUser(this.repository);

  @override
  Stream<Either<UserFailures, User?>> call(NoParams params) {
    return repository.listenUser();
  }
}
