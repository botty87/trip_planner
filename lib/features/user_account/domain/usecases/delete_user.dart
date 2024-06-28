import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../trips/domain/repositories/trips_repository.dart';
import '../../../trips/errors/trips_failure.dart';
import '../../errors/user_failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class DeleteUser implements UseCase<void, DeleteUserParams> {
  final UserRepository repository;
  final TripsRepository tripsRepository;
  final InternetConnection internetConnection;

  DeleteUser(this.repository, this.tripsRepository, this.internetConnection);

  @override
  Future<Either<UserFailures, void>> call(DeleteUserParams params) async {
    if (!(await internetConnection.hasInternetAccess)) {
      return left(const UserFailures.networkRequestFailed());
    }

    final deleteTripsResult = await tripsRepository.deleteAllTrips(params.userId);
    return deleteTripsResult.fold(
      (failure) {
        final message = switch (failure) {
          final TripsFailureNoInternetConnection _ => LocaleKeys.noInternetConnectionMessage.tr(),
          TripsFailure(:final message) => message,
        };

        return left(UserFailures.unknownError(message: message));
      },
      (_) => repository.deleteUser(),
    );
  }
}

class DeleteUserParams {
  final String userId;

  const DeleteUserParams({required this.userId});
}
