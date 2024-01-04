import 'package:cloud_firestore/cloud_firestore.dart' hide Settings;
import 'package:injectable/injectable.dart';

import '../../features/settings/domain/entities/settings.dart';
import '../constants.dart';
import 'abstract_collection_ref.dart';

@injectable
class SettingsCollectionRef implements AbstractCollectionRef<Settings> {
  final FirebaseFirestore firebaseFirestore;

  SettingsCollectionRef(this.firebaseFirestore);

  @override
  CollectionReference get collectionRef {
    return firebaseFirestore.collection(settingsRef);
  }

  @override
  CollectionReference<Settings> get withConverter {
    return collectionRef.withConverter(
      fromFirestore: (snapshot, _) => Settings.fromJson(snapshot.data()!),
      toFirestore: (settings, _) => settings.toJson(),
    );
  }
}
