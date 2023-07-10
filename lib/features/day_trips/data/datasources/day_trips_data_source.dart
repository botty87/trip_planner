import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/day_trip.dart';

abstract class DayTripsDataSource {
  Future<void> createDayTrip(
      {required String name, String? description, required String tripId});
}

@LazySingleton(as: DayTripsDataSource)
class DayTripsDataSourceImpl implements DayTripsDataSource {
  DayTripsDataSourceImpl();

  CollectionReference<DayTrip> _dayTripsCollection(String tripId) =>
      FirebaseFirestore.instance.collection('trips').doc(tripId).collection('dayTrips').withConverter<DayTrip>(
            fromFirestore: (snapshot, _) => DayTrip.fromJson(snapshot.data()!).copyWith(id: snapshot.id),
            toFirestore: (dayTrip, _) => dayTrip.toJson(),
          );

  @override
  Future<void> createDayTrip(
      {required String name, String? description, required String tripId}) async {
    await _dayTripsCollection(tripId).add(DayTrip(name: name, description: description));
  }
}