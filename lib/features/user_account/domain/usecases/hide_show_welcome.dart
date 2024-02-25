import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/user_failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class HideShowWelcome implements UseCase<void, NoParams> {
  final UserRepository repository;

  const HideShowWelcome(this.repository);

  @override
  Future<Either<UserFailures, void>> call(NoParams params) {
    return repository.setShowWelcome(false);
  }
}
