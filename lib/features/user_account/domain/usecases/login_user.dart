import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/user_failure.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class LoginUser implements UseCase<void, LoginUserParams> {
  final UserRepository repository;

  LoginUser(this.repository);

  @override
  Future<Either<UserFailure, void>> call(LoginUserParams params) {
    return repository.loginUser(
        email: params.email, password: params.password);
  }
}

class LoginUserParams extends Equatable {
  final String email;
  final String password;

  LoginUserParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
