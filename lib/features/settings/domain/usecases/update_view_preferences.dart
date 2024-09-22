import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../user_account/domain/repositories/user_repository.dart';
import '../../../user_account/errors/user_failures.dart';
import '../entities/view_preferences.dart';

@lazySingleton
class UpdateViewPreferences implements UseCase<void, UpdateViewPreferencesParams> {
  UpdateViewPreferences(this.repository);

  final UserRepository repository;

  @override
  Future<Either<UserFailures, void>> call(UpdateViewPreferencesParams params) {
    return repository.updateViewPreferences(viewMode: params.viewMode, viewModePage: params.viewModePage);
  }
}

class UpdateViewPreferencesParams extends Equatable {
  final ViewMode viewMode;
  final ViewModePage viewModePage;

  const UpdateViewPreferencesParams({
    required this.viewMode,
    required this.viewModePage,
  });

  @override
  List<Object?> get props => [viewMode, viewModePage];
}

enum ViewModePage { trips, trip, dayTrip }
