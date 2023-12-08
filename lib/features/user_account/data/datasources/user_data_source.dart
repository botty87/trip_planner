import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth_pack;
import 'package:injectable/injectable.dart';
import '../../../../core/db/users_collection_ref.dart';
import '../../../../core/di/di.dart';
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

  deleteUser();
}

@LazySingleton(as: UserDataSource)
final class UserDataSourceImpl implements UserDataSource {
  final firebase_auth_pack.FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  final StreamController<User?> _userStreamController = StreamController<User?>();

  @override
  late final Stream<User?> user = _userStreamController.stream;

  late final _usersCollection = getIt<UsersCollectionRef>().withConverter;

  UserDataSourceImpl(this.firebaseAuth, this.firebaseFirestore) {
    Future<UserDB> saveUserIfNotExistsInDB(firebase_auth_pack.User firebaseUser) async {
      final userDoc = _usersCollection.doc(firebaseUser.uid);
      var userDocSnapshot = await userDoc.get();
      if (!userDocSnapshot.exists) {
        await userDoc.set(UserDB(
          email: firebaseUser.email!,
          name: firebaseUser.displayName!,
        ));
        userDocSnapshot = await userDoc.get();
      }
      return userDocSnapshot.data()!;
    }

    firebaseAuth.userChanges().listen((user) async {
      if (user != null) {
        final userDB = await saveUserIfNotExistsInDB(user);
        
        _userStreamController.add(User(
          id: user.uid,
          email: user.email!,
          name: user.displayName!,
          oldTripsImported: userDB.oldTripsImported,
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
          oldTripsImported: true,
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
    final credential = firebase_auth_pack.EmailAuthProvider.credential(email: email, password: password);
    await firebaseAuth.currentUser!.reauthenticateWithCredential(credential);
  }

  @override
  updateUserDetails({String? name, String? email, String? password}) async {
    final batch = firebaseFirestore.batch();

    final userDoc = firebaseFirestore.collection('users').doc(firebaseAuth.currentUser!.uid);

    if (name != null) {
      await firebaseAuth.currentUser!.updateDisplayName(name);
      batch.set(userDoc, {'name': name}, SetOptions(merge: true));
    }
    if (email != null) {
      await firebaseAuth.currentUser!.updateEmail(email);
      batch.set(userDoc, {'email': email}, SetOptions(merge: true));
    }
    if (password != null) {
      await firebaseAuth.currentUser!.updatePassword(password);
    }

    await batch.commit();
  }

  @override
  deleteUser() async {
    await _usersCollection.doc(firebaseAuth.currentUser!.uid).delete();
    await firebaseAuth.currentUser!.delete();
  }
}
