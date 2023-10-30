import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utilities/extensions.dart';
import '../../domain/entities/day_trip.dart';

abstract class DayTripsDataSource {
  Future<void> addDayTrip({required String tripId, required DayTrip dayTrip});

  Stream<List<DayTrip>> listenDayTrips(String tripId);

  Future<void> updateDayTripsIndexes({required String tripId, required List<DayTrip> dayTrips});
  Future<void> updateDayTrip({
    required String id,
    required String tripId,
    required String? description,
  });
  Future<void> updateDayTripStartTime({
    required String id,
    required String tripId,
    required TimeOfDay startTime,
  });

  Future<void> deleteDayTrip({required String tripId, required String dayTripId});
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
    final dayTripsCollection = _dayTripsCollection(tripId);
    final dayTripsCount = (await dayTripsCollection.count().get()).count;
    dayTrip = dayTrip.copyWith(index: dayTripsCount);

    await _dayTripsCollection(tripId).add(dayTrip);
  }

  @override
  Stream<List<DayTrip>> listenDayTrips(String tripId) async* {
    yield* _dayTripsCollection(tripId).orderBy('index').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  @override
  Future<void> updateDayTripsIndexes(
      {required String tripId, required List<DayTrip> dayTrips}) async {
    final batch = FirebaseFirestore.instance.batch();
    final dayTripsCollection = _dayTripsCollection(tripId);

    for (var i = 0; i < dayTrips.length; i++) {
      final dayTrip = dayTrips[i];
      batch.update(dayTripsCollection.doc(dayTrip.id), {'index': dayTrip.index});
    }

    await batch.commit();
  }

  @override
  Future<void> updateDayTrip(
      {required String id, required String tripId, required String? description}) async {
    await _dayTripsCollection(tripId).doc(id).update({
      'description': description?.isEmpty ?? true ? null : description,
    });
  }

  @override
  Future<void> updateDayTripStartTime(
      {required String id, required String tripId, required TimeOfDay startTime}) async {
    await _dayTripsCollection(tripId).doc(id).update({
      'startTime': startTime.toJson(),
    });
  }

  @override
  Future<void> deleteDayTrip({required String tripId, required String dayTripId}) async {
    final batchs = [FirebaseFirestore.instance.batch()];
    int currentBatchIndex = 0;
    int currentBatchSize = 1;

    final dayTripReference = _dayTripsCollection(tripId).doc(dayTripId);
    batchs[currentBatchIndex].delete(dayTripReference);

    final tripStops = await FirebaseFirestore.instance
        .collection('trips')
        .doc(tripId)
        .collection('dayTrips')
        .doc(dayTripId)
        .collection('tripStops')
        .get();

    for (final tripStop in tripStops.docs) {
      if (currentBatchSize == 500) {
        currentBatchIndex++;
        batchs.add(FirebaseFirestore.instance.batch());
        currentBatchSize = 0;
      }

      batchs[currentBatchIndex].delete(tripStop.reference);
      currentBatchSize++;
    }

    await Future.wait(batchs.map((batch) => batch.commit()));
  }
}
