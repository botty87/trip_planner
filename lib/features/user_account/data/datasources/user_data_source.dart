
import '../../domain/entities/user.dart';

abstract interface class UserDataSource {
  Stream<User> listenUser();
  Future<void> saveUser(User user);
}

final class UserDataSourceImpl implements UserDataSource {
  @override
  Stream<User> listenUser() {
    // TODO: implement listenUser
    throw UnimplementedError();
  }

  @override
  Future<void> saveUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

}