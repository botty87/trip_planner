import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import '../../domain/entities/user.dart';

abstract interface class UserDataSource {
  Stream<User?> listenUser();
  registerUser({required String email, required String password, required String name});

  loginUser({required String email, required String password});

  recoverPassword(String email);

  logoutUser();

  reauthenticateUser({required String email, required String password});

  updateUserDetails({String? name, String? email, String? password});
}

@LazySingleton(as: UserDataSource)
final class UserDataSourceImpl implements UserDataSource {
  final FirebaseAuth firebaseAuth;

  UserDataSourceImpl(this.firebaseAuth);

  @override
  Stream<User?> listenUser() async* {
    await for (final user in FirebaseAuth.instance.userChanges()) {
      if (user != null) {
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
  registerUser({required String email, required String password, required String name}) async {
    
    await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    await firebaseAuth.currentUser!.updateDisplayName(name);
  }
  
  @override
  loginUser({required String email, required String password}) async {
    await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }
  
  @override
  recoverPassword(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }
  
  @override
  logoutUser() async {
    await firebaseAuth.signOut();
  }
  
  @override
  reauthenticateUser({required String email, required String password}) async {
    final credential = EmailAuthProvider.credential(email: email, password: password);
    await firebaseAuth.currentUser!.reauthenticateWithCredential(credential);
  }
  
  @override
  updateUserDetails({String? name, String? email, String? password}) async {
    if (name != null) {
      await firebaseAuth.currentUser!.updateDisplayName(name);
    }
    if (email != null) {
      await firebaseAuth.currentUser!.updateEmail(email);
    }
    if (password != null) {
      await firebaseAuth.currentUser!.updatePassword(password);
    }
  }
}
