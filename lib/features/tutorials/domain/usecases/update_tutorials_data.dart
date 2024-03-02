import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../user_account/domain/repositories/user_repository.dart';
import '../../../user_account/errors/user_failures.dart';
import '../entities/tutorials_data.dart';

@lazySingleton
class UpdateTutorialsData implements UseCase<void, UpdateTutorialsDataParams> {
  final UserRepository repository;

  const UpdateTutorialsData(this.repository);

  @override
  Future<Either<UserFailures, void>> call(UpdateTutorialsDataParams params) {
    return repository.saveTutorialsData(params.tutorialsData);
  }
}

class UpdateTutorialsDataParams extends Equatable {
  final TutorialsData tutorialsData;

  const UpdateTutorialsDataParams(this.tutorialsData);

  @override
  List<Object> get props => [tutorialsData];
}
