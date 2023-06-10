import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/trip.dart';

abstract class TripsDataSource {
  Future<void> addTrip(Trip trip);
}

@LazySingleton(as: TripsDataSource)
final class TripsDataSourceImpl implements TripsDataSource {
  TripsDataSourceImpl();

  final _tripsCollection = FirebaseFirestore.instance.collection('trips').withConverter<Trip>(
        fromFirestore: (snapshot, _) => Trip.fromJson(snapshot.data()!),
        toFirestore: (trip, _) => trip.toJson(),
      );

  @override
  Future<void> addTrip(Trip trip) async {
    await _tripsCollection.add(trip); 
  }
}
