import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/db/trips_collection_ref.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/data_source_firestore_sync_mixin.dart';
import '../../domain/entities/trip.dart';

abstract class TripsDataSource {
  Future<void> addTrip(Trip trip);
  Stream<List<Trip>> listenTrips(String userId);
  Future<void> updateTrip(String id, String name, String? description, DateTime startDate, bool isPublic);

  Future<void> deleteTrip(Trip trip);

  deleteAllTrips(String userId);
}

@LazySingleton(as: TripsDataSource)
final class TripsDataSourceImpl with DataSourceFirestoreSyncMixin implements TripsDataSource {
  final FirebaseFirestore firebaseFirestore;

  TripsDataSourceImpl(this.firebaseFirestore);

  late final _tripsCollection = getIt<TripsCollectionRef>().withConverter;

  @override
  Future<void> addTrip(Trip trip) async {
    performSync(() async => await _tripsCollection.add(trip));
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
  Future<void> updateTrip(String id, String name, String? description, DateTime startDate, bool isPublic) async {
    performSync(() async => await _tripsCollection.doc(id).update({
          'name': name,
          'description': description?.isEmpty ?? true ? null : description,
          'startDate': startDate,
          'isPublic': isPublic,
        }));
  }

  @override
  Future<void> deleteTrip(Trip trip) async {
    final batchs = [firebaseFirestore.batch()];
    int currentBatchIndex = 0;
    int currentBatchSize = 1;

    final tripReference = _tripsCollection.doc(trip.id);
    batchs[currentBatchIndex].delete(tripReference);

    final dayTrips =
        await firebaseFirestore.collection('trips').doc(trip.id).collection('dayTrips').get();

    for (final dayTrip in dayTrips.docs) {
      if (currentBatchSize == 500) {
        currentBatchIndex++;
        batchs.add(firebaseFirestore.batch());
        currentBatchSize = 0;
      }

      batchs[currentBatchIndex].delete(dayTrip.reference);
      currentBatchSize++;

      final tripStops = await firebaseFirestore
          .collection('trips')
          .doc(trip.id)
          .collection('dayTrips')
          .doc(dayTrip.id)
          .collection('tripStops')
          .get();

      for (final tripStop in tripStops.docs) {
        if (currentBatchSize == 500) {
          currentBatchIndex++;
          batchs.add(firebaseFirestore.batch());
          currentBatchSize = 0;
        }

        batchs[currentBatchIndex].delete(tripStop.reference);
        currentBatchSize++;
      }
    }

    performSync(() async => await Future.wait(batchs.map((batch) => batch.commit())));
  }

  @override
  deleteAllTrips(String userId) async {
    final batchs = [firebaseFirestore.batch()];
    int currentBatchIndex = 0;
    int currentBatchSize = 1;

    final trips =
        await firebaseFirestore.collection('trips').where('userId', isEqualTo: userId).get();

    for (final trip in trips.docs) {
      if (currentBatchSize == 500) {
        currentBatchIndex++;
        batchs.add(firebaseFirestore.batch());
        currentBatchSize = 0;
      }

      batchs[currentBatchIndex].delete(trip.reference);
      currentBatchSize++;

      final dayTrips =
          await firebaseFirestore.collection('trips').doc(trip.id).collection('dayTrips').get();

      for (final dayTrip in dayTrips.docs) {
        if (currentBatchSize == 500) {
          currentBatchIndex++;
          batchs.add(firebaseFirestore.batch());
          currentBatchSize = 0;
        }

        batchs[currentBatchIndex].delete(dayTrip.reference);
        currentBatchSize++;

        final tripStops = await firebaseFirestore
            .collection('trips')
            .doc(trip.id)
            .collection('dayTrips')
            .doc(dayTrip.id)
            .collection('tripStops')
            .get();

        for (final tripStop in tripStops.docs) {
          if (currentBatchSize == 500) {
            currentBatchIndex++;
            batchs.add(firebaseFirestore.batch());
            currentBatchSize = 0;
          }

          batchs[currentBatchIndex].delete(tripStop.reference);
          currentBatchSize++;
        }
      }
    }

    performSync(() async => await Future.wait(batchs.map((batch) => batch.commit())));
  }
}
