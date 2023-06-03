
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import '../../domain/entities/user.dart';

abstract interface class UserDataSource {
  Stream<User?> listenUser();
  Future<void> saveUser(User user);
}

@LazySingleton(as: UserDataSource)
final class UserDataSourceImpl implements UserDataSource {
  @override
  Stream<User?> listenUser() async* {
    await for(final user in FirebaseAuth.instance.userChanges()) {
      if(user != null) {
        yield User(
          id: user.uid,
          email: user.email!,
          name: user.displayName!,
        );
      } else {
        yield null;
      }
    }
  }

  @override
  Future<void> saveUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

}