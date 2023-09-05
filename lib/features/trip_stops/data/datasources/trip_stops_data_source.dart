import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';

abstract class TripStopsDataSource {
  Future<void> addTripStop(
      {required String tripId,
      required String dayTripId,
      required String name,
      String? description,
      required LatLng location,
      required TimeOfDay startTime,
      required TimeOfDay endTime});
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
  Future<void> addTripStop(
      {required String tripId,
      required String dayTripId,
      required String name,
      String? description,
      required LatLng location,
      required TimeOfDay startTime,
      required TimeOfDay endTime}) async {
    final tripStopsCollection = _tripStopsCollection(tripId, dayTripId);
    final tripStop = TripStop.create(
      name: name,
      description: description,
      location: location,
      startTime: startTime,
      endTime: endTime,
    );

    await tripStopsCollection.add(tripStop);
  }
}
