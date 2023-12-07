import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../features/trip_stops/domain/entities/trip_stop.dart';
import '../constants.dart';
import 'abstract_collection_ref.dart';

@injectable
class TripStopsCollectionRef implements AbstractCollectionRef<TripStop> {
  final FirebaseFirestore firebaseFirestore;
  final String tripId;
  final String dayTripId;

  TripStopsCollectionRef(
      this.firebaseFirestore, @factoryParam this.tripId, @factoryParam this.dayTripId);

  @override
  CollectionReference get collectionRef {
    return firebaseFirestore
        .collection(tripsRef)
        .doc(tripId)
        .collection(dayTripsRef)
        .doc(dayTripId)
        .collection(tripStopsRef);
  }

  @override
  CollectionReference<TripStop> get withConverter {
    return collectionRef.withConverter(
      fromFirestore: (snapshot, _) => TripStop.fromJson(snapshot.data()!).copyWith(id: snapshot.id),
      toFirestore: (tripStop, _) => tripStop.toJson(),
    );
  }
}
