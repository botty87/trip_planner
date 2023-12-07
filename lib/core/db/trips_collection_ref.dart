import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../features/trips/domain/entities/trip.dart';
import '../constants.dart';
import 'abstract_collection_ref.dart';

@injectable
class TripsCollectionRef implements AbstractCollectionRef<Trip> {
  final FirebaseFirestore firebaseFirestore;

  TripsCollectionRef(this.firebaseFirestore);

  @override
  CollectionReference get collectionRef {
    return firebaseFirestore.collection(tripsRef);
  }

  @override
  CollectionReference<Trip> get withConverter {
    return collectionRef.withConverter(
      fromFirestore: (snapshot, _) => Trip.fromJson(snapshot.data()!).copyWith(id: snapshot.id),
      toFirestore: (trip, _) => trip.toJson(),
    );
  }
}
