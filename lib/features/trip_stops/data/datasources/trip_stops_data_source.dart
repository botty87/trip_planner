import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/trip_stop.dart';

abstract class TripStopsDataSource {
  Future<void> addTripStop({
    required String tripId,
    required String dayTripId,
    required String name,
    String? description,
    required LatLng location,
    required int duration,
  });

  Stream<List<TripStop>> listenTripStops({required String tripId, required String dayTripId});

  Future<void> updateTripStopsIndexes({
    required String tripId,
    required String dayTripId,
    required List<TripStop> tripStops,
  });

  Future<void> updateTravelTime({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required int travelTime,
  });
}

@LazySingleton(as: TripStopsDataSource)
class TripStopsDataSourceImpl implements TripStopsDataSource {
  CollectionReference<TripStop> _tripStopsCollection(String tripId, String dayTripId) =>
      FirebaseFirestore.instance
          .collection('trips')
          .doc(tripId)
          .collection('dayTrips')
          .doc(dayTripId)
          .collection('tripStops')
          .withConverter<TripStop>(
            fromFirestore: (snapshot, _) =>
                TripStop.fromJson(snapshot.data()!).copyWith(id: snapshot.id),
            toFirestore: (dayTrip, _) => dayTrip.toJson(),
          );

  @override
  Future<void> addTripStop({
    required String tripId,
    required String dayTripId,
    required String name,
    String? description,
    required LatLng location,
    required int duration,
  }) async {
    final tripStopsCollection = _tripStopsCollection(tripId, dayTripId);
    final tripStopsCount = (await tripStopsCollection.count().get()).count;

    final tripStop = TripStop.create(
      name: name,
      description: description,
      location: location,
      duration: duration,
      index: tripStopsCount,
    );

    await tripStopsCollection.add(tripStop);
  }

  @override
  Stream<List<TripStop>> listenTripStops(
      {required String tripId, required String dayTripId}) async* {
    yield* _tripStopsCollection(tripId, dayTripId).orderBy('index').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  @override
  Future<void> updateTripStopsIndexes(
      {required String tripId,
      required String dayTripId,
      required List<TripStop> tripStops}) async {
    final batch = FirebaseFirestore.instance.batch();
    final tripStopsCollection = _tripStopsCollection(tripId, dayTripId);

    for (var i = 0; i < tripStops.length; i++) {
      final tripStop = tripStops[i];
      batch.update(tripStopsCollection.doc(tripStop.id), {'index': tripStop.index});
    }

    await batch.commit();
  }

  @override
  Future<void> updateTravelTime(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required int travelTime}) async {
    final tripStopDoc = _tripStopsCollection(tripId, dayTripId).doc(tripStopId);
    await tripStopDoc.update({'travelTimeToNextStop': travelTime});
  }
}
