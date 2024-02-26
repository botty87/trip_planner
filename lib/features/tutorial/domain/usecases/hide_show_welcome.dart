import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../user_account/errors/user_failures.dart';
import '../../../user_account/domain/repositories/user_repository.dart';

@lazySingleton
class HideShowWelcome implements UseCase<void, NoParams> {
  final UserRepository repository;

  const HideShowWelcome(this.repository);

  @override
  Future<Either<UserFailures, void>> call(NoParams params) {
    return repository.setShowWelcome(false);
  }
}

