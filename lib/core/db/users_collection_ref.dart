import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../features/user_account/data/models/user_model.dart';
import '../constants.dart';
import 'abstract_collection_ref.dart';

@injectable
class UsersCollectionRef implements AbstractCollectionRef<UserModel> {
  final FirebaseFirestore firebaseFirestore;

  UsersCollectionRef(this.firebaseFirestore);

  @override
  CollectionReference get collectionRef {
    return firebaseFirestore.collection(usersRef);
  }

  @override
  CollectionReference<UserModel> get withConverter {
    return collectionRef.withConverter(
      fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
  }
}
