import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../features/day_trips/domain/entities/day_trip.dart';
import '../constants.dart';
import 'abstract_collection_ref.dart';

@injectable
class DayTripsCollectionRef implements AbstractCollectionRef<DayTrip> {
  final FirebaseFirestore firebaseFirestore;
  final String tripId;

  DayTripsCollectionRef(this.firebaseFirestore, @factoryParam this.tripId);

  @override
  CollectionReference get collectionRef {
    return firebaseFirestore.collection(tripsRef).doc(tripId).collection(dayTripsRef);
  }

  @override
  CollectionReference<DayTrip> get withConverter {
    return collectionRef.withConverter(
      fromFirestore: (snapshot, _) => DayTrip.fromJson(snapshot.data()!).copyWith(id: snapshot.id),
      toFirestore: (dayTrip, _) => dayTrip.toJson(),
    );
  }
}
