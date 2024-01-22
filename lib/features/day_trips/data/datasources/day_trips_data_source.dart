import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/db/day_trips_collection_ref.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/data_source_firestore_sync_mixin.dart';
import '../../../../core/utilities/extensions.dart';
import '../../domain/entities/day_trip.dart';
import '../../domain/entities/trip_stops_directions.dart';

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

  Future<void> saveTripStopsDirections(
      {required String tripId,
      required String dayTripId,
      required List<TripStopsDirections> tripStopsDirections});

  Stream<DayTrip> listenDayTrip(String tripId, String dayTripId);

  updateTripStopsDirectionsUpToDate(
      {required String tripId,
      required String dayTripId,
      required bool isUpToDate,
      TravelMode? travelMode});

  updateDayTripShowDirections(
      {required String tripId, required String dayTripId, required bool showDirections});

  updateDayTripUseDifferentDirectionsColors(
      {required String tripId,
      required String dayTripId,
      required bool useDifferentDirectionsColors});
}

@LazySingleton(as: DayTripsDataSource)
class DayTripsDataSourceImpl with DataSourceFirestoreSyncMixin implements DayTripsDataSource {
  final FirebaseFirestore firebaseFirestore;

  DayTripsDataSourceImpl(this.firebaseFirestore);

  CollectionReference<DayTrip> _dayTripsCollection(String tripId) =>
      getIt<DayTripsCollectionRef>(param1: tripId).withConverter;

  @override
  Future<void> addDayTrip({required String tripId, required DayTrip dayTrip}) async {
    final dayTripsCollection = _dayTripsCollection(tripId);
    final dayTripsCount = (await dayTripsCollection.count().get()).count;
    dayTrip = dayTrip.copyWith(index: dayTripsCount!);

    await _dayTripsCollection(tripId).add(dayTrip);
  }

  @override
  Stream<List<DayTrip>> listenDayTrips(String tripId) async* {
    yield* _dayTripsCollection(tripId).orderBy('index').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  @override
  Stream<DayTrip> listenDayTrip(String tripId, String dayTripId) async* {
    yield* _dayTripsCollection(tripId).doc(dayTripId).snapshots().map((snapshot) {
      return snapshot.data()!;
    });
  }

  @override
  Future<void> updateDayTripsIndexes(
      {required String tripId, required List<DayTrip> dayTrips}) async {
    final batch = firebaseFirestore.batch();
    final dayTripsCollection = _dayTripsCollection(tripId);

    for (var i = 0; i < dayTrips.length; i++) {
      final dayTrip = dayTrips[i];
      batch.update(dayTripsCollection.doc(dayTrip.id), {'index': dayTrip.index});
    }

    performSync(() async => await batch.commit());
  }

  @override
  Future<void> updateDayTrip(
      {required String id, required String tripId, required String? description}) async {
    await performSync(() async => await _dayTripsCollection(tripId).doc(id).update({
          'description': description,
        }));
  }

  @override
  Future<void> updateDayTripStartTime(
      {required String id, required String tripId, required TimeOfDay startTime}) async {
    await performSync(() async {
      await _dayTripsCollection(tripId).doc(id).update({
        'startTime': startTime.toJson(),
      });
    });
  }

  @override
  Future<void> deleteDayTrip({required String tripId, required String dayTripId}) async {
    final batchs = [firebaseFirestore.batch()];
    int currentBatchIndex = 0;
    int currentBatchSize = 1;

    final dayTripReference = _dayTripsCollection(tripId).doc(dayTripId);
    batchs[currentBatchIndex].delete(dayTripReference);

    final tripStops = await firebaseFirestore
        .collection('trips')
        .doc(tripId)
        .collection('dayTrips')
        .doc(dayTripId)
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

    await performSync(() async => await Future.wait(batchs.map((batch) => batch.commit())));
  }

  @override
  Future<void> saveTripStopsDirections(
      {required String tripId,
      required String dayTripId,
      required List<TripStopsDirections> tripStopsDirections}) async {
    performSync(() async {
      _dayTripsCollection(tripId).doc(dayTripId).update({
        'tripStopsDirections': tripStopsDirections.map((e) => e.toJson()).toList(),
        'tripStopsDirectionsUpToDate': true,
      });
    });
  }

  @override
  updateTripStopsDirectionsUpToDate(
      {required String tripId,
      required String dayTripId,
      required bool isUpToDate,
      TravelMode? travelMode}) async {
    performSync(() async {
      await _dayTripsCollection(tripId).doc(dayTripId).update({
        'tripStopsDirectionsUpToDate': isUpToDate,
        if (travelMode != null) 'travelMode': travelMode.toJson(),
      });
    });
  }

  @override
  updateDayTripShowDirections(
      {required String tripId, required String dayTripId, required bool showDirections}) async {
    await _dayTripsCollection(tripId).doc(dayTripId).update({
      'showDirections': showDirections,
    });
  }

  @override
  updateDayTripUseDifferentDirectionsColors(
      {required String tripId,
      required String dayTripId,
      required bool useDifferentDirectionsColors}) async {
    await _dayTripsCollection(tripId).doc(dayTripId).update({
      'useDifferentDirectionsColors': useDifferentDirectionsColors,
    });
  }
}
