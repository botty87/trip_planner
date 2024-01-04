import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../user_account/domain/repositories/user_repository.dart';
import '../../../user_account/errors/user_failures.dart';
import '../entities/settings.dart';

@lazySingleton
class UpdateSettings implements UseCase<void, UpdateSettingsParams> {
  final UserRepository repository;
  UpdateSettings(this.repository);

  @override
  Future<Either<UserFailures, void>> call(UpdateSettingsParams params) {
    return repository.saveSettings(params.settings);
  }
}

class UpdateSettingsParams extends Equatable {
  final Settings settings;

  const UpdateSettingsParams({
    required this.settings,
  });

  @override
  List<Object?> get props => [settings];
}
