import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:quiver/collection.dart';

import '../../../../core/db/day_trips_collection_ref.dart';
import '../../../../core/db/trip_stops_collection_ref.dart';
import '../../../../core/db/trips_collection_ref.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/data_source_firestore_sync_mixin.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../core/utilities/pair.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../domain/entities/trip.dart';
import '../../errors/trips_exception.dart';

abstract class TripsDataSource {
  Future<void> addTrip(Trip trip);
  Stream<List<Trip>> listenTrips(String userId);
  Future<void> updateTrip(
      String id, String name, String? description, DateTime startDate, bool isPublic);

  Future<void> deleteTrip(Trip trip);

  deleteAllTrips(String userId);

  createFromExistingTrip({
    required Trip newTrip,
    required Trip existingTrip,
    required bool showDirections,
    required bool useDifferentDirectionsColors,
  });
}

@LazySingleton(as: TripsDataSource)
final class TripsDataSourceImpl with DataSourceFirestoreSyncMixin implements TripsDataSource {
  final FirebaseFirestore firebaseFirestore;
  final InternetConnection internetConnection;

  TripsDataSourceImpl(this.firebaseFirestore, this.internetConnection);

  late final _tripsCollection = getIt<TripsCollectionRef>().withConverter;

  CollectionReference<DayTrip> _dayTripsCollection(String tripId) =>
      getIt<DayTripsCollectionRef>(param1: tripId).withConverter;
  CollectionReference<TripStop> _tripStopsCollection(String tripId, String dayTripId) =>
      getIt<TripStopsCollectionRef>(param1: tripId, param2: dayTripId).withConverter;

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
  Future<void> updateTrip(
      String id, String name, String? description, DateTime startDate, bool isPublic) async {
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
      _checkAndIncrementBatchSize(currentBatchSize, currentBatchIndex, batchs).let((values) {
        currentBatchSize = values.first;
        currentBatchIndex = values.second;
      });

      batchs[currentBatchIndex].delete(dayTrip.reference);

      final tripStops = await firebaseFirestore
          .collection('trips')
          .doc(trip.id)
          .collection('dayTrips')
          .doc(dayTrip.id)
          .collection('tripStops')
          .get();

      for (final tripStop in tripStops.docs) {
        _checkAndIncrementBatchSize(currentBatchSize, currentBatchIndex, batchs).let((values) {
          currentBatchSize = values.first;
          currentBatchIndex = values.second;
        });

        batchs[currentBatchIndex].delete(tripStop.reference);
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
      _checkAndIncrementBatchSize(currentBatchSize, currentBatchIndex, batchs).let((values) {
        currentBatchSize = values.first;
        currentBatchIndex = values.second;
      });

      batchs[currentBatchIndex].delete(trip.reference);

      final dayTrips =
          await firebaseFirestore.collection('trips').doc(trip.id).collection('dayTrips').get();

      for (final dayTrip in dayTrips.docs) {
        _checkAndIncrementBatchSize(currentBatchSize, currentBatchIndex, batchs).let((values) {
          currentBatchSize = values.first;
          currentBatchIndex = values.second;
        });

        batchs[currentBatchIndex].delete(dayTrip.reference);

        final tripStops = await firebaseFirestore
            .collection('trips')
            .doc(trip.id)
            .collection('dayTrips')
            .doc(dayTrip.id)
            .collection('tripStops')
            .get();

        for (final tripStop in tripStops.docs) {
          _checkAndIncrementBatchSize(currentBatchSize, currentBatchIndex, batchs).let((values) {
            currentBatchSize = values.first;
            currentBatchIndex = values.second;
          });

          batchs[currentBatchIndex].delete(tripStop.reference);
        }
      }
    }

    performSync(() async => await Future.wait(batchs.map((batch) => batch.commit())));
  }

  @override
  createFromExistingTrip({
    required Trip newTrip,
    required Trip existingTrip,
    required bool showDirections,
    required bool useDifferentDirectionsColors,
  }) async {
    if (!(await internetConnection.hasInternetAccess)) {
      throw const TripsException.noInternetConnection();
    }

    final dayTripsSnapshot = await _dayTripsCollection(existingTrip.id).get();
    final existingDayTripsStops = Multimap<DayTrip, TripStop>();

    await Future.wait([
      for (final dayTrip in dayTripsSnapshot.docs)
        _tripStopsCollection(existingTrip.id, dayTrip.id).get().then((value) {
          existingDayTripsStops.addValues(
            dayTrip.data(),
            value.docs.map((e) => e.data()),
          );
        })
    ], eagerError: true);

    final newDayTripsStops = Multimap<DayTrip, TripStop>();

    for (final dayTrip in existingDayTripsStops.keys) {
      final newDayTrip = DayTrip.createFromExisting(
        dayTrip: dayTrip,
        showDirections: showDirections,
        useDifferentDirectionsColors: useDifferentDirectionsColors,
      );

      final newTripStops = existingDayTripsStops[dayTrip]
          .map((tripStop) => TripStop.createFromExisting(tripStop: tripStop));

      newDayTripsStops.addValues(newDayTrip, newTripStops);
    }

    final batchs = [firebaseFirestore.batch()];
    int currentBatchIndex = 0;
    int currentBatchSize = 1;

    final newTripReference = _tripsCollection.doc();
    batchs[currentBatchIndex].set(newTripReference, newTrip);

    for (final dayTrip in newDayTripsStops.keys) {
      _checkAndIncrementBatchSize(currentBatchSize, currentBatchIndex, batchs).let((values) {
        currentBatchSize = values.first;
        currentBatchIndex = values.second;
      });

      final newDayTripReference = _dayTripsCollection(newTripReference.id).doc();
      batchs[currentBatchIndex].set(newDayTripReference, dayTrip);

      for (final tripStop in newDayTripsStops[dayTrip]) {
        _checkAndIncrementBatchSize(currentBatchSize, currentBatchIndex, batchs).let((values) {
          currentBatchSize = values.first;
          currentBatchIndex = values.second;
        });

        final newTripStopReference =
            _tripStopsCollection(newTripReference.id, newDayTripReference.id).doc();
        batchs[currentBatchIndex].set(newTripStopReference, tripStop);
      }
    }

    await Future.wait(batchs.map((batch) => batch.commit()));
  }

  //returns new currentBatchSize and currentBatchIndex
  Pair<int, int> _checkAndIncrementBatchSize(
      int currentBatchSize, int currentBatchIndex, List<WriteBatch> batchs) {
    currentBatchSize++;
    if (currentBatchSize > 500) {
      currentBatchIndex++;
      batchs.add(firebaseFirestore.batch());
      currentBatchSize = 0;
    }
    return Pair(currentBatchSize, currentBatchIndex);
  }
}
