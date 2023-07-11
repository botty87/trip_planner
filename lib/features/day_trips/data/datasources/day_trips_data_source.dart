import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/day_trip.dart';

abstract class DayTripsDataSource {
  Future<void> addDayTrip({required String tripId, required DayTrip dayTrip});

  Stream<List<DayTrip>> listenDayTrips(String tripId);
}

@LazySingleton(as: DayTripsDataSource)
class DayTripsDataSourceImpl implements DayTripsDataSource {
  DayTripsDataSourceImpl();

  CollectionReference<DayTrip> _dayTripsCollection(String tripId) => FirebaseFirestore.instance
      .collection('trips')
      .doc(tripId)
      .collection('dayTrips')
      .withConverter<DayTrip>(
        fromFirestore: (snapshot, _) =>
            DayTrip.fromJson(snapshot.data()!).copyWith(id: snapshot.id),
        toFirestore: (dayTrip, _) => dayTrip.toJson(),
      );

  @override
  Future<void> addDayTrip({required String tripId, required DayTrip dayTrip}) async {
    await _dayTripsCollection(tripId).add(dayTrip);
  }

  @override
  Stream<List<DayTrip>> listenDayTrips(String tripId) async* {
    yield* _dayTripsCollection(tripId).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }
}
