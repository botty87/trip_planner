import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/user_failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class UpdateUserDetails implements UseCase<void, UpdateUserDetailsParams> {
  final UserRepository userRepository;

  UpdateUserDetails(this.userRepository);

  @override
  Future<Either<UserFailures, void>> call(params) async {
    return await userRepository.updateUserDetails(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

class UpdateUserDetailsParams {
  final String? name;
  final String? email;
  final String? password;

  const UpdateUserDetailsParams({this.name, this.email, this.password});
}
