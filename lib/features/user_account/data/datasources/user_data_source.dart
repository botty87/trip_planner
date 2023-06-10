import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import '../../domain/entities/user.dart';

abstract interface class UserDataSource {
  Stream<User?> listenUser();
  registerUser({required String email, required String password, required String name});

  loginUser({required String email, required String password});

  recoverPassword(String email);
}

@LazySingleton(as: UserDataSource)
final class UserDataSourceImpl implements UserDataSource {
  @override
  Stream<User?> listenUser() async* {
    await for (final user in FirebaseAuth.instance.userChanges()) {
      if (user != null) {
        yield User(
          id: user.uid,
          email: user.email!,
          name: user.displayName,
        );
      } else {
        yield null;
      }
    }
  }

  @override
  registerUser({required String email, required String password, required String name}) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    await FirebaseAuth.instance.currentUser!.updateDisplayName(name);
  }
  
  @override
  loginUser({required String email, required String password}) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  }
  
  @override
  recoverPassword(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
