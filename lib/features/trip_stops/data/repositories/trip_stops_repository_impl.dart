import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/trip_stop.dart';
import '../../errors/trip_stops_failure.dart';

import '../../domain/repositories/trip_stops_repository.dart';
import '../datasources/trip_stops_data_source.dart';

@LazySingleton(as: TripStopsRepository)
class TripStopsRepositoryImpl implements TripStopsRepository {
  final TripStopsDataSource _tripStopsDataSource;

  TripStopsRepositoryImpl(this._tripStopsDataSource);

  @override
  Future<Either<TripStopsFailure, void>> addTripStop({
    required String tripId,
    required String dayTripId,
    required String name,
    String? description,
    required LatLng location,
    required int duration,
  }) async {
    try {
      await _tripStopsDataSource.addTripStop(
        tripId: tripId,
        dayTripId: dayTripId,
        name: name,
        description: description,
        location: location,
        duration: duration,
      );
      return right(null);
    } on FirebaseException catch (e) {
      return left(TripStopsFailure(message: e.message));
    } on Exception {
      return left(const TripStopsFailure());
    }
  }

  @override
  Stream<Either<TripStopsFailure, List<TripStop>>> listenTripStops(
      {required String tripId, required String dayTripId}) async* {
    try {
      yield* _tripStopsDataSource
          .listenTripStops(tripId: tripId, dayTripId: dayTripId)
          .map((tripStops) => right(tripStops));
    } catch (e) {
      yield left(const TripStopsFailure());
    }
  }
}
