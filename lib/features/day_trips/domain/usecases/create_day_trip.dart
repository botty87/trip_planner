import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:injectable/injectable.dart';
import '../entities/day_trip.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class CreateDayTrip implements UseCase<void, CreateDayTripParams> {
  final DayTripsRepository repository;

  CreateDayTrip(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(CreateDayTripParams params) async {
    return await repository.addDayTrip(
        tripId: params.tripId,
        dayTrip: DayTrip.create(
          description: params.description,
          startTime: params.startTime,
          travelMode: params.travelMode,
          showDirections: params.showDirections,
          useDifferentDirectionsColors: params.useDifferentDirectionsColors,
        ));
  }
}

class CreateDayTripParams extends Equatable {
  final String? description;
  final String tripId;
  final TimeOfDay startTime;
  final TravelMode travelMode;
  final bool showDirections;
  final bool useDifferentDirectionsColors;

  const CreateDayTripParams({
    this.description,
    required this.tripId,
    required this.startTime,
    required this.travelMode,
    required this.showDirections,
    required this.useDifferentDirectionsColors,
  });

  @override
  List<Object?> get props =>
      [description, tripId, startTime, travelMode, showDirections, useDifferentDirectionsColors];
}
