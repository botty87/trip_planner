import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class ListenUser implements StreamUseCase<User, NoParams> {
  final UserRepository repository;

  ListenUser(this.repository);

  @override
  Stream<Either<Failure, User>> call(NoParams params) {
    return repository.listenUser();
  }
}