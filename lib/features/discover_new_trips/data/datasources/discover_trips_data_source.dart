import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/db/day_trips_collection_ref.dart';
import '../../../../core/db/trip_stops_collection_ref.dart';
import '../../../../core/db/trips_collection_ref.dart';
import '../../../../core/di/di.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';

abstract class DiscoverTripsDataSource {
  Future<List<Trip>> getPublicTrips(String userId);
  Future<List<DayTrip>> getPublicDayTrips(String tripId);

  Future<List<TripStop>> getPublicTripStops(String tripId, String dayTripId);
}

@LazySingleton(as: DiscoverTripsDataSource)
class DiscoverTripsDataSourceImpl implements DiscoverTripsDataSource {
  CollectionReference<Trip> _tripsCollection() => getIt<TripsCollectionRef>().withConverter;
  CollectionReference<DayTrip> _dayTripsCollection(String tripId) =>
      getIt<DayTripsCollectionRef>(param1: tripId).withConverter;
  CollectionReference<TripStop> _tripStopsCollection(String tripId, String dayTripId) =>
      getIt<TripStopsCollectionRef>(param1: tripId, param2: dayTripId).withConverter;

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

  @override
  Future<List<DayTrip>> getPublicDayTrips(String tripId) async {
    final dayTrips = await _dayTripsCollection(tripId).orderBy('index').get();

    return dayTrips.docs.map((dayTrip) => dayTrip.data()).toList();
  }

  @override
  Future<List<TripStop>> getPublicTripStops(String tripId, String dayTripId) async {
    final tripStops = await _tripStopsCollection(tripId, dayTripId).orderBy('index').get();

    return tripStops.docs.map((tripStop) => tripStop.data()).toList();
  }
}
