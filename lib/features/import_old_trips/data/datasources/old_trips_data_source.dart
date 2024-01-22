import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:quiver/collection.dart';

import '../../../../core/db/day_trips_collection_ref.dart';
import '../../../../core/db/trip_stops_collection_ref.dart';
import '../../../../core/db/trips_collection_ref.dart';
import '../../../../core/db/users_collection_ref.dart';
import '../../../../core/di/di.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/old_daily_trip.dart';
import '../../domain/entities/old_place.dart';
import '../../domain/entities/old_trip.dart';
import '../../domain/entities/trip_stops_container.dart';

abstract class OldTripsDataSource {
  Future<List<OldTrip>> readOldTrips({required String userId});
  Future<void> importOldTrips({
    required String userId,
    required ListMultimap<Trip, TripStopsContainer> newTrips,
  });
}

@LazySingleton(as: OldTripsDataSource)
final class OldTripsDataSourceImpl implements OldTripsDataSource {
  final FirebaseDatabase _firebaseDatabase;

  OldTripsDataSourceImpl(this._firebaseDatabase);

  late final _tripsCollection = getIt<TripsCollectionRef>().withConverter;

  CollectionReference<DayTrip> _dayTripsCollection(String tripId) =>
      getIt<DayTripsCollectionRef>(param1: tripId).withConverter;

  CollectionReference<TripStop> _tripStopsCollection(String tripId, String dayTripId) =>
      getIt<TripStopsCollectionRef>(param1: tripId, param2: dayTripId).withConverter;

  late final _usersCollection = getIt<UsersCollectionRef>().withConverter;

  @override
  Future<List<OldTrip>> readOldTrips({required String userId}) async {
    final List<OldTrip> oldTrips = [];
    final userDoc = _usersCollection.doc(userId);

    final databaseReference = _firebaseDatabase.ref();
    final userTripsSnapshot = await databaseReference
        .child('users')
        .child(userId)
        .get()
        .timeout(const Duration(seconds: 2), onTimeout: () async {
      await userDoc.update({'oldTripsImported': true});
      throw TimeoutException('Timeout reading user trips');
    });

    if (!userTripsSnapshot.exists) {
      return oldTrips;
    }

    final data = userTripsSnapshot.value as Map<dynamic, dynamic>;
    final trips = data['trips'] as Map<dynamic, dynamic>;
    final tripIds = trips.keys.cast<String>().toList();

    for (String tripId in tripIds) {
      final tripSnapshot = await databaseReference.child('trips').child(tripId).get();
      if (!tripSnapshot.exists) {
        continue;
      }
      final tripData = tripSnapshot.value as Map<dynamic, dynamic>;
      final tripName = tripData['name'] as String;
      final dailyTrips = tripData['daily_trips'] as Map<dynamic, dynamic>;

      final List<OldDailyTrip> oldDailyTrips = [];
      dailyTrips.forEach((key, value) {
        final dailyTripData = value as Map<dynamic, dynamic>;
        final dailyTripName = dailyTripData['name'] as String;
        final dailyTripNotes = dailyTripData['note'] as String?;
        final dailyTripDay = dailyTripData['day'] as int?;
        final dailyTripMonth = dailyTripData['month'] as int?;
        final dailyTripYear = dailyTripData['year'] as int?;
        final dailyTripPosition = dailyTripData['position'] as int?;
        final dailyTripPlaces = dailyTripData['places'] as Map<dynamic, dynamic>?;

        final List<OldPlace> oldPlaces = [];

        dailyTripPlaces?.forEach((key, value) {
          final placeData = value as Map<dynamic, dynamic>;
          final placeName = placeData['name'] as String;
          final placeNotes = placeData['note'] as String?;
          final placeLatitude = placeData['latitude'] as double;
          final placeLongitude = placeData['longitude'] as double;
          final placePosition = placeData['position'] as int?;

          oldPlaces.add(OldPlace(
            name: placeName,
            note: placeNotes,
            position: placePosition ?? 0,
            latitude: placeLatitude,
            longitude: placeLongitude,
          ));
        });

        //Sort oldPlaces by position
        oldPlaces.sort((a, b) => a.position.compareTo(b.position));

        oldDailyTrips.add(OldDailyTrip(
          name: dailyTripName,
          note: dailyTripNotes,
          day: dailyTripDay,
          month: dailyTripMonth,
          year: dailyTripYear,
          position: dailyTripPosition ?? 0,
          places: oldPlaces,
        ));
      });

      //Sort oldDailyTrips by position
      oldDailyTrips.sort((a, b) => a.position.compareTo(b.position));

      oldTrips.add(OldTrip(
        id: tripId,
        name: tripName,
        dailyTrips: oldDailyTrips,
      ));
    }

    //Sort oldTrips by name
    oldTrips.sort((a, b) => a.name.compareTo(b.name));

    if (oldTrips.isEmpty) {
      await userDoc.update({'oldTripsImported': true});
    }

    return oldTrips;
  }

  @override
  Future<void> importOldTrips(
      {required String userId, required ListMultimap<Trip, TripStopsContainer> newTrips}) async {
    final batch = FirebaseFirestore.instance.batch();

    for (final trip in newTrips.keys) {
      final tripDoc = _tripsCollection.doc();
      batch.set(tripDoc, trip);

      final tripStopsContainers = newTrips[trip];
      for (final tripStopsContainer in tripStopsContainers) {
        final dayTrip = tripStopsContainer.dayTrip;
        final dayTripDoc = _dayTripsCollection(tripDoc.id).doc();
        batch.set(dayTripDoc, dayTrip);

        final tripStops = tripStopsContainer.tripStops;
        for (final tripStop in tripStops) {
          final tripStopDoc = _tripStopsCollection(tripDoc.id, dayTripDoc.id).doc();
          batch.set(tripStopDoc, tripStop);
        }
      }
    }

    final userDoc = _usersCollection.doc(userId);
    batch.update(userDoc, {
      'oldTripsImported': true,
    });

    await batch.commit();
  }
}
