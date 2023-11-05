import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/user_failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class RegisterUser implements UseCase<void, RegisterUserParams> {
  final UserRepository repository;

  RegisterUser(this.repository);

  @override
  Future<Either<UserFailures, void>> call(RegisterUserParams params) {
    return repository.registerUser(
      email: params.email,
      password: params.password,
      name: params.name,
    );
  }
}

final class RegisterUserParams extends Equatable {
  final String email;
  final String password;
  final String name;

  const RegisterUserParams({
    required this.email,
    required this.password,
    required this.name,
  });

  @override
  List<Object?> get props => [email, password, name];
}
