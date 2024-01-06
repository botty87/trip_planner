import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/db/trips_collection_ref.dart';
import '../../../../core/di/di.dart';
import '../../../trips/domain/entities/trip.dart';

abstract class DiscoverTripsDataSource {
  Future<List<Trip>> getPublicTrips(String userId);
}

@LazySingleton(as: DiscoverTripsDataSource)
class DiscoverTripsDataSourceImpl implements DiscoverTripsDataSource {
  CollectionReference<Trip> _tripsCollection() => getIt<TripsCollectionRef>().withConverter;

  @override
  Future<List<Trip>> getPublicTrips(String userId) async {
    final trips = await _tripsCollection()
        .where('isPublic', isEqualTo: true)
        .where('userId', isNotEqualTo: userId)
        .orderBy('userId')
        .orderBy('name')
        .get();

    return trips.docs.map((trip) => trip.data()).toList();
  }
}
