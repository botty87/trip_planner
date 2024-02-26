import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../user_account/errors/user_failures.dart';
import '../../../user_account/domain/repositories/user_repository.dart';

@lazySingleton
class HideShowPublicTrip implements UseCase<void, NoParams> {
  final UserRepository repository;

  const HideShowPublicTrip(this.repository);

  @override
  Future<Either<UserFailures, void>> call(NoParams params) {
    return repository.setShowPublicTrip(false);
  }
}

