import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/user_db.dart';

abstract interface class UserDataSource {
  Stream<User?> get user;

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
  final FirebaseFirestore firebaseFirestore;
  final StreamController<User?> _userStreamController = StreamController<User?>();

  @override
  late final Stream<User?> user = _userStreamController.stream;

  late final _usersCollection = firebaseFirestore.collection('users').withConverter<UserDB>(
        fromFirestore: (snapshot, _) => UserDB.fromJson(snapshot.data()!),
        toFirestore: (user, _) => user.toJson(),
      );

  UserDataSourceImpl(this.firebaseAuth, this.firebaseFirestore) {
    firebaseAuth.userChanges().listen((user) async {
      if (user != null) {
        _userStreamController.add(User(
          id: user.uid,
          email: user.email!,
          name: user.displayName!,
        ));
      } else {
        _userStreamController.add(null);
      }
    });
  }

  @override
  registerUser({required String email, required String password, required String name}) async {
    await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    await firebaseAuth.currentUser!.updateDisplayName(name);
    await _usersCollection.doc(firebaseAuth.currentUser!.uid).set(UserDB(
          email: email,
          name: name,
        ));
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

    await _usersCollection.doc(firebaseAuth.currentUser!.uid).update({
      'email': email,
      'name': name,
    });
  }
}
