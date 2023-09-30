import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../errors/user_failure.dart';

import '../../../../core/usecases/usecase.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class RecoverPassword implements UseCase<void, RecoverPasswordParams> {
  final UserRepository repository;

  RecoverPassword(this.repository);

  @override
  Future<Either<UserFailure, void>> call(RecoverPasswordParams params) async {
    return await repository.recoverPassword(params.email);
  }
}

class RecoverPasswordParams extends Equatable {
  final String email;

  const RecoverPasswordParams({required this.email});

  @override
  List<Object?> get props => [email];
}