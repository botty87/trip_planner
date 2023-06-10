import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/user_account/errors/user_failure.dart';

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

  RecoverPasswordParams({required this.email});

  @override
  List<Object?> get props => [email];
}