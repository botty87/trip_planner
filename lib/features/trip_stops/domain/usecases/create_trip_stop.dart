
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../../../../core/usecases/usecase.dart';
import '../repositories/trip_stops_repository.dart';

@lazySingleton
class CreateTripStop implements UseCase<void, CreateTripStopParams> {
  final TripStopsRepository _tripStopsRepository;

  CreateTripStop(this._tripStopsRepository);

  @override
  Future<Either<TripStopsFailure, void>> call(params) {
    return _tripStopsRepository.addTripStop(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      name: params.name,
      description: params.description,
      location: params.location,
      startTime: params.startTime,
      endTime: params.endTime,
    );
  }
}

class CreateTripStopParams {
  final String tripId;
  final String dayTripId;
  final String name;
  final String? description;
  final LatLng location;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  CreateTripStopParams({
    required this.tripId,
    required this.dayTripId,
    required this.name,
    this.description,
    required this.location,
    required this.startTime,
    required this.endTime,
  });
}