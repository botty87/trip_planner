import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/trip.dart';

abstract class TripsDataSource {
  Future<void> addTrip(Trip trip);
  Stream<List<Trip>> listenTrips(String userId);
  Future<void> updateTrip(String id, String name, String? description, DateTime startDate);

  Future<void> deleteTrip(Trip trip);
}

@LazySingleton(as: TripsDataSource)
final class TripsDataSourceImpl implements TripsDataSource {
  TripsDataSourceImpl();

  final _tripsCollection = FirebaseFirestore.instance.collection('trips').withConverter<Trip>(
        fromFirestore: (snapshot, _) => Trip.fromJson(snapshot.data()!).copyWith(id: snapshot.id),
        toFirestore: (trip, _) => trip.toJson(),
      );

  @override
  Future<void> addTrip(Trip trip) async {
    await _tripsCollection.add(trip);
  }

  @override
  Stream<List<Trip>> listenTrips(String userId) async* {
    yield* _tripsCollection
        .where('userId', isEqualTo: userId)
        .orderBy('name')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  @override
  Future<void> updateTrip(String id, String name, String? description, DateTime startDate) async {
    await _tripsCollection.doc(id).update({
      'name': name,
      'description': description?.isEmpty ?? true ? null : description,
      'startDate': startDate,
    });
  }

  @override
  Future<void> deleteTrip(Trip trip) async {
    final batchs = [FirebaseFirestore.instance.batch()];
    int currentBatchIndex = 0;
    int currentBatchSize = 1;

    final tripReference = _tripsCollection.doc(trip.id);
    batchs[currentBatchIndex].delete(tripReference);

    final dayTrips = await FirebaseFirestore.instance
        .collection('trips')
        .doc(trip.id)
        .collection('dayTrips')
        .get();

    for (final dayTrip in dayTrips.docs) {
      if (currentBatchSize == 500) {
        currentBatchIndex++;
        batchs.add(FirebaseFirestore.instance.batch());
        currentBatchSize = 0;
      }

      batchs[currentBatchIndex].delete(dayTrip.reference);
      currentBatchSize++;
    }

    await Future.wait(batchs.map((batch) => batch.commit()));
  }
}
