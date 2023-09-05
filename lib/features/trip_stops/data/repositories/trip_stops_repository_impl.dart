import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

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
    required TimeOfDay startTime,
    required TimeOfDay endTime,
  }) async {
    try {
      await _tripStopsDataSource.addTripStop(
        tripId: tripId,
        dayTripId: dayTripId,
        name: name,
        description: description,
        location: location,
        startTime: startTime,
        endTime: endTime,
      );
      return right(null);
    } on FirebaseException catch (e) {
      return left(TripStopsFailure(message: e.message));
    } on Exception {
      return left(TripStopsFailure());
    }
  }
}
