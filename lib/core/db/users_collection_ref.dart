import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../features/user_account/domain/entities/user_db.dart';
import '../constants.dart';
import 'abstract_collection_ref.dart';

@injectable
class UsersCollectionRef implements AbstractCollectionRef<UserDB> {
  final FirebaseFirestore firebaseFirestore;

  UsersCollectionRef(this.firebaseFirestore);

  @override
  CollectionReference get collectionRef {
    return firebaseFirestore.collection(usersRef);
  }

  @override
  CollectionReference<UserDB> get withConverter {
    return collectionRef.withConverter(
      fromFirestore: (snapshot, _) => UserDB.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
  }
}
