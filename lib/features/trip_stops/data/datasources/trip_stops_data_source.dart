import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/db/trip_stops_collection_ref.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/data_source_firestore_sync_mixin.dart';
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

  Future<void> updateTripStopDone({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required bool isDone,
  });

  Future<void> updateTripStopNote({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required String? note,
  });

  Future<void> deleteTripStop({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
  });

  Future<void> updateTripStop({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required String name,
    required String? description,
    required int duration,
    required LatLng location,
  });

  Future<void> updateTripStopPlaceholder({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required TripStopPlaceholder? placeholder,
  });
}

@LazySingleton(as: TripStopsDataSource)
class TripStopsDataSourceImpl with DataSourceFirestoreSyncMixin implements TripStopsDataSource {
  final FirebaseFirestore firebaseFirestore;

  TripStopsDataSourceImpl(this.firebaseFirestore);

  CollectionReference<TripStop> _tripStopsCollection(String tripId, String dayTripId) =>
      getIt<TripStopsCollectionRef>(param1: tripId, param2: dayTripId).withConverter;

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
    final tripStopsCount = (await tripStopsCollection.count().get()).count!;

    final tripStop = TripStop.create(
      name: name,
      description: description,
      location: location,
      duration: duration,
      index: tripStopsCount,
    );

    performSync(() async => await tripStopsCollection.add(tripStop));
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

    performSync(() async => await batch.commit());
  }

  @override
  Future<void> updateTravelTime(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required int travelTime}) async {
    final tripStopDoc = _tripStopsCollection(tripId, dayTripId).doc(tripStopId);

    performSync(() async => await tripStopDoc.update({'travelTimeToNextStop': travelTime}));
  }

  @override
  Future<void> updateTripStopDone(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required bool isDone}) async {
    final tripStopDoc = _tripStopsCollection(tripId, dayTripId).doc(tripStopId);

    performSync(() async => await tripStopDoc.update({'isDone': isDone}));
  }

  @override
  Future<void> updateTripStopNote(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required String? note}) async {
    final tripStopDoc = _tripStopsCollection(tripId, dayTripId).doc(tripStopId);

    performSync(() async => await tripStopDoc.update({'note': note}));
  }

  @override
  Future<void> deleteTripStop(
      {required String tripId, required String dayTripId, required String tripStopId}) async {
    final tripStopDoc = _tripStopsCollection(tripId, dayTripId).doc(tripStopId);

    performSync(() async => await tripStopDoc.delete());
  }

  @override
  Future<void> updateTripStop(
      {required String tripId,
      required String dayTripId,
      required String tripStopId,
      required String name,
      required String? description,
      required int duration,
      required LatLng location}) async {
    final tripStopDoc = _tripStopsCollection(tripId, dayTripId).doc(tripStopId);

    performSync(() async => await tripStopDoc.update({
          'name': name,
          'description': description?.isEmpty ?? true ? null : description,
          'duration': duration,
          'location': GeoPoint(location.latitude, location.longitude),
        }));
  }

  @override
  Future<void> updateTripStopPlaceholder({
    required String tripId,
    required String dayTripId,
    required String tripStopId,
    required TripStopPlaceholder? placeholder,
  }) async {
    final tripStopDoc = _tripStopsCollection(tripId, dayTripId).doc(tripStopId);

    performSync(() async => await tripStopDoc.update({'placeholder': placeholder?.toJson()}));
  }
}
