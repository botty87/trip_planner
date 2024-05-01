import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:quiver/collection.dart';

import '../../../../core/db/day_trips_collection_ref.dart';
import '../../../../core/db/trip_stops_collection_ref.dart';
import '../../../../core/db/trips_collection_ref.dart';
import '../../../../core/db/users_collection_ref.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/data_source_firestore_sync_mixin.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../domain/entities/trip.dart';
import '../../errors/trips_exception.dart';

abstract interface class TripsDataSource {
  Future<void> addTrip(Trip trip);

  Stream<List<Trip>> listenUserTrips(String userId);

  Stream<List<Trip>> listenSharedTrips(String userId);

  Future<void> updateTrip(
    String id,
    String name,
    String? description,
    DateTime startDate,
    bool isPublic,
    String languageCode,
  );

  Future<void> deleteTrip(Trip trip);

  deleteAllUserTrips(String userId);

  createFromExistingTrip({
    required Trip newTrip,
    required Trip existingTrip,
    required bool showDirections,
    required bool useDifferentDirectionsColors,
  });

  Future<void> addUserForShare(String tripId, String email);

  Stream<Trip?> listenTrip(String tripId);

  Future<void> removeUserForShare(String tripId, String userId);
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

  late final _usersCollection = getIt<UsersCollectionRef>().withConverter;

  @override
  Future<void> addTrip(Trip trip) async {
    performSync(() async => await _tripsCollection.add(trip));
  }

  @override
  Stream<List<Trip>> listenUserTrips(String userId) async* {
    yield* _tripsCollection
        .where('userId', isEqualTo: userId)
        .orderBy('name')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  @override
  Future<void> updateTrip(String id, String name, String? description, DateTime startDate,
      bool isPublic, String languageCode) async {
    performSync(() async => await _tripsCollection.doc(id).update({
          'name': name,
          'description': description?.isEmpty ?? true ? null : description,
          'startDate': startDate,
          'isPublic': isPublic,
          'languageCode': languageCode,
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
        currentBatchSize = values.currentBatchSize;
        currentBatchIndex = values.currentBatchIndex;
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
          currentBatchSize = values.currentBatchSize;
          currentBatchIndex = values.currentBatchIndex;
        });

        batchs[currentBatchIndex].delete(tripStop.reference);
      }
    }

    performSync(() async => await Future.wait(batchs.map((batch) => batch.commit())));
  }

  @override
  deleteAllUserTrips(String userId) async {
    await firebaseFirestore.runTransaction((transaction) async {
      //Filter the user trips to delete
      final trips =
          await firebaseFirestore.collection('trips').where('userId', isEqualTo: userId).get();

      //Delete the trips
      for (final trip in trips.docs) {
        final dayTrips =
            await firebaseFirestore.collection('trips').doc(trip.id).collection('dayTrips').get();

        //Delete the day trips
        for (final dayTrip in dayTrips.docs) {
          final tripStops = await firebaseFirestore
              .collection('trips')
              .doc(trip.id)
              .collection('dayTrips')
              .doc(dayTrip.id)
              .collection('tripStops')
              .get();

          //Delete the trip stops
          for (final tripStop in tripStops.docs) {
            transaction.delete(tripStop.reference);
          }

          transaction.delete(dayTrip.reference);
        }

        transaction.delete(trip.reference);
      }

      //Filter the trips shared with the user and remove the user from the sharedWith array
      final sharedTrips = await firebaseFirestore
          .collection('trips')
          .where('sharedWith', arrayContains: userId)
          .get();

      for (final trip in sharedTrips.docs) {
        transaction.update(trip.reference, {
          'sharedWith': FieldValue.arrayRemove([userId])
        });
      }
    });
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
        currentBatchSize = values.currentBatchSize;
        currentBatchIndex = values.currentBatchIndex;
      });

      final newDayTripReference = _dayTripsCollection(newTripReference.id).doc();
      batchs[currentBatchIndex].set(newDayTripReference, dayTrip);

      for (final tripStop in newDayTripsStops[dayTrip]) {
        _checkAndIncrementBatchSize(currentBatchSize, currentBatchIndex, batchs).let((values) {
          currentBatchSize = values.currentBatchSize;
          currentBatchIndex = values.currentBatchIndex;
        });

        final newTripStopReference =
            _tripStopsCollection(newTripReference.id, newDayTripReference.id).doc();
        batchs[currentBatchIndex].set(newTripStopReference, tripStop);
      }
    }

    await Future.wait(batchs.map((batch) => batch.commit()));
  }

  //returns new currentBatchSize and currentBatchIndex
  ({int currentBatchSize, int currentBatchIndex}) _checkAndIncrementBatchSize(
      int currentBatchSize, int currentBatchIndex, List<WriteBatch> batchs) {
    currentBatchSize++;
    if (currentBatchSize > 500) {
      currentBatchIndex++;
      batchs.add(firebaseFirestore.batch());
      currentBatchSize = 0;
    }

    return (currentBatchSize: currentBatchSize, currentBatchIndex: currentBatchIndex);
  }

  @override
  Future<void> addUserForShare(String tripId, String email) async {
    //We must have internet connection to perform this operation
    if (!(await internetConnection.hasInternetAccess)) {
      throw const ShareTripException.noInternetConnection();
    }

    //Check if the user exists and add it to the sharedUsers array
    final userDoc = await _usersCollection.where('email', isEqualTo: email).get();
    if (userDoc.size != 1) {
      throw const ShareTripException.userNotFound();
    }

    //Update the trip with the new shared user id
    await _tripsCollection.doc(tripId).update({
      'sharedWith': FieldValue.arrayUnion([userDoc.docs.first.id])
    });
  }

  @override
  Stream<Trip?> listenTrip(String tripId) async* {
    yield* _tripsCollection.doc(tripId).snapshots().map((snapshot) => snapshot.data());
  }

  @override
  Future<void> removeUserForShare(String tripId, String userId) async {
    //We must have internet connection to perform this operation
    if (!(await internetConnection.hasInternetAccess)) {
      throw const ShareTripException.noInternetConnection();
    }

    //Update the trip with the new shared user id
    await _tripsCollection.doc(tripId).update({
      'sharedWith': FieldValue.arrayRemove([userId])
    });
  }

  @override
  Stream<List<Trip>> listenSharedTrips(String userId) async* {
    yield* _tripsCollection
        .where('sharedWith', arrayContains: userId)
        .orderBy('name')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }
}
