
import '../../domain/entities/user.dart';

abstract interface class UserDataSource {
  Stream<User> listenUser();
  Future<void> saveUser(User user);
}