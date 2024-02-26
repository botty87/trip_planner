import 'package:dartz/dartz.dart';

import '../../../settings/domain/entities/settings.dart';
import '../../../tutorial/domain/entities/tutorials_data.dart';
import '../../errors/user_failures.dart';
import '../entities/user.dart';

abstract interface class UserRepository {
  Stream<Either<UserFailures, User?>> listenUser();

  Future<Either<UserFailures, void>> registerUser(
      {required String email, required String password, required String name});

  Future<Either<UserFailures, void>> loginUser({required String email, required String password});

  Future<Either<UserFailures, void>> recoverPassword(String email);

  Future<Either<UserFailures, void>> logoutUser();

  Future<Either<UserFailures, void>> reauthenticateUser(
      {required String email, required String password});

  Future<Either<UserFailures, void>> updateUserDetails(
      {required String? name, required String? email, required String? password});

  Future<Either<UserFailures, void>> deleteUser();

  Future<Either<UserFailures, void>> saveSettings(Settings settings);

  //TODO implement test
  Future<Either<UserFailures, void>> saveTutorialsData(TutorialsData tutorialsData);
}
