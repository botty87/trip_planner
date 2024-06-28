import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/user_failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class GetUsersNames implements UseCase<Map<String, String>, GetUsersNamesParams> {
  final UserRepository repository;

  const GetUsersNames(this.repository);

  @override
  Future<Either<UserFailures, Map<String, String>>> call(GetUsersNamesParams params) {
    return repository.getUsersNames(params.userIds);
  }
}

class GetUsersNamesParams extends Equatable {
  final List<String> userIds;

  const GetUsersNamesParams({required this.userIds});

  @override
  List<Object> get props => [userIds];
}
